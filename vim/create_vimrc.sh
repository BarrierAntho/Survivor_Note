#!/bin/bash -x

##############################
### GLOBAL CONSTANT ###
PROGNAME=${0}
VERBOSE=false;
SEP_P="####################"
SEP_SP="--------------------"

##############################
### GLOBAL VARIABLE ###
VIMRUN_PATH=/usr/share/vim/vim82
VIMRC_DFT=defaults.vim
VIMRC_PATH=${HOME}
VIMRC_NAME=.vimrc
VIM_TMP=.vim/template

##############################
### CONFIGURATION VARIABLE ###
USR_42=abarrier
MAIL_42=abarrier@student.42.fr

##############################
### COLOR CONSTANT ###
RD='\033[0;31m'
GN='\033[0;32m'
YE='\033[0;33m'
BU='\033[0;34m'
MG='\033[0;35m'
NC='\033[0m'

##############################
### MAN USAGE ###
function	usage() {
	# DISPLAY THE USAGE AND EXIT.
	cat << EOF >&2
Usage: ${PROGNAME} [-v]
-v: verbose to debug
EOF
	exit 1;
}

##############################
### FUNCTIONS ###
function	parse_options()
{
	# LOOP THROUGH ALL ARGS OF THE PROGRAM TO DETECT OPTIONS
	${VERBOSE} && echo -e "${YE}${SEP_SP}${NC}";
	${VERBOSE} && echo -e "${YE}Executing \"${FUNCNAME}\"${NC}";
	while getopts "v" OPTION
	do
		${VERBOSE} && echo -e "${MG}OPTION = ${OPTION}${NC}";
		case "${OPTION}" in
			v) VERBOSE=true;;
			:) usage;;
			*) usage;;
		esac
	done
	# AND SHIFT LIST TO REMOVE OPTIONS
	${VERBOSE} && echo -e "${MG}option verbose =${VERBOSE}${NC}";
	${VERBOSE} && echo -e "${MG}option log file=${LOG_FILE}${NC}";
}

function	set_dft_settings()
{
	${VERBOSE} && echo -e "${YE}${SEP_SP}${NC}";
	${VERBOSE} && echo -e "${YE}Executing \"${FUNCNAME}\"${NC}";

	# DEFAULT SETTINGS
	echo "source ${1}" > ${2};
	echo "" >> ${2};

	# 42 USER/MAIL SETTINGS
	echo "let g:user42 = '${USR_42}'" >> ${2};
	echo "let g:mail42 = '${MAIL_42}'" >> ${2};
	echo "" >> ${2};

	# USEFUL SETTINGS
	echo "syntax on" >> ${2};
	echo "filetype plugin indent on" >> ${2};
	echo "set autoindent" >> ${2};
	echo "set colorcolumn=80" >> ${2};
	echo "set hlsearch" >> ${2};
	echo "set ignorecase" >> ${2};
	echo "set incsearch" >> ${2};
	echo "set number" >> ${2};
	echo "set ruler" >> ${2};
	echo "set showcmd" >> ${2};
	echo "set showmatch" >> ${2};
	echo "set showmode" >> ${2};
	echo "set wildmenu" >> ${2};
	echo "" >> ${2};

	# MAP SETTINGS
	echo ":map \p i{<Esc>ea}<Esc>" >> ${2};
	echo "" >> ${2};

	# AUTOCMD
	echo ":autocmd BufNewFile	*.cpp	0r ${3}/skeleton_canonic.cpp" >> ${2};
	echo ":autocmd BufNewFile	*.hpp	0r ${3}/skeleton_canonic.hpp" >> ${2};
	return 0;
}

function	create_vimrc()
{
	${VERBOSE} && echo -e "${YE}${SEP_SP}${NC}";
	${VERBOSE} && echo -e "${YE}Executing \"${FUNCNAME}\"${NC}";
	if [[ -f ${1} ]] && ! [[ -f ${2} ]]
	then
		touch ${2};
		if [[ "$?" != 0 ]]
		then
			echo -e "${RD}Error: impossible to create the file: ${2}${NC}";
			echo -e "${YE}${SEP_SP}${NC}";
			return 1;
		fi;
#	else
#		echo -e "${RD}${2} already exists${NC}";
#		return 1;
	fi;
	return 0;
}

function	main()
{
	local OPT_NB=1;

	${VERBOSE} && echo -e "${YE}${SEP_SP}${NC}";
	${VERBOSE} && echo -e "${YE}Executing \"${FUNCNAME}\"${NC}";
	parse_options ${@};
	# SHIFT LIST TO REMOVE OPTIONS ONLY AND LET ARGS AS MODULE NAME
	for arg in ${@}
	do
		if [[ ${arg} = -* ]]
		then
			${VERBOSE} && echo "Arg to be shifted: ${arg}";
			shift 1;
			${VERBOSE} && echo "Remaining arguments: ${@}";
		fi;
	done;
	${VERBOSE} && echo "Final remaining arguments: ${@}";
	create_vimrc ${VIMRUN_PATH}/${VIMRC_DFT} ${VIMRC_PATH}/${VIMRC_NAME} 
	if [[ "$?" != 0 ]];then return 1;fi;
	set_dft_settings ${VIMRUN_PATH}/${VIMRC_DFT} ${VIMRC_PATH}/${VIMRC_NAME} ${VIMRC_PATH}/${VIM_TMP}
	return 0;
}

##############################
### PROGRAM START ###
echo -e "${YE}${SEP_SP}${NC}";
echo -e "${YE}Program - Start ${NC}";
main ${@};
exit $?;
### PROGRAM END ##
