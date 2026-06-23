#!/bin/bash
export HIP_VISIBLE_DEVICES=0,1,2,3
python3 -m vllm.entrypoints.openai.api_server --model meta-llama/Llama-3-70b-hf --dtype float16 --tensor-parallel-size 4 --port 8000
