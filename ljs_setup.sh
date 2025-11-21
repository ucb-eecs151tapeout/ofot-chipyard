#!/bin/bash

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
 __conda_setup="$('/scratch/ee198-20-aab/conda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
 if [ $? -eq 0 ]; then
    eval "$__conda_setup"
 else
     if [ -f "/scratch/ee198-20-aab/conda/etc/profile.d/conda.sh" ]; then
         . "/scratch/ee198-20-aab/conda/etc/profile.d/conda.sh"
    else
         export PATH="/scratch/ee198-20-aab/conda/bin:$PATH"
     fi
 fi
 unset __conda_setup
# <<< conda initialize <<<


# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
 export MAMBA_EXE='/scratch/ee198-20-aab/conda/bin/mamba';
 export MAMBA_ROOT_PREFIX='/scratch/ee198-20-aab/conda';
 __mamba_setup="$("$MAMBA_EXE" shell hook --shell bash --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
 if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias mamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<
source /scratch/ee198-20-aab/ofot-chipyard/env.sh
export wd=/scratch/ee198-20-aab/ofot-chipyard