nvidia-smi | grep -E "[0-9]+W" | sed -E "s/.* ([0-9]+)W \/ [0-9]+W.*/\1/g" | paste -s -d "+" | bc -l
