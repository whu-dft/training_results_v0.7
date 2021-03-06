## System run parms
export DGXNNODES=16
export DGXSYSTEM=$(basename $(readlink -f ${BASH_SOURCE[0]}) | sed 's/^config_//' | sed 's/\.sh$//' )
export WALLTIME=${WALLTIME:-"00:15:00"}

## DL params
export LR=${LR:-"4.0e-3"}
export TRAIN_BATCH_SIZE=${TRAIN_BATCH_SIZE:-32}
export TEST_BATCH_SIZE=${TEST_BATCH_SIZE:-16}
export WARMUP_STEPS=${WARMUP_STEPS:-200}
export REMAIN_STEPS=${REMAIN_STEPS:-2259}
export DECAY_INTERVAL=${DECAY_INTERVAL:-283}
export TARGET=${TARGET:-24.0}
export MAX_SEQ_LEN=${MAX_SEQ_LEN:-75}
export NUMEPOCHS=${NUMEPOCHS:-12}
export MATH=${MATH:-fp16}
export EXTRA_OPTS=${EXTRA_OPTS-"\
   --fused-attention \
   --fused-xentropy \
   --prealloc-mode=once \
   --no-log-all-ranks \
   --enable-apex-allreduce-overlap \
   --apex-message-size 16067130 \
   --apex-num-allreduce-streams 1 \
   "}
export CUDNN_PREFER_SM_COUNT_DBG=64
export NCCL_MAX_NRINGS=16


## System config params
export DGXNGPU=16
export DGXSOCKETCORES=24
export DGXHT=2 	# HT is on is 2, HT off is 1
export DGXNSOCKET=2
