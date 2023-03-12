with open('avg_pnsr.log', 'r') as f:
    lines = f.readlines()

n_frames_per_sec = 60
psnr_sum = 0
psnr_count = 0
sec = 1

for line in lines:
    psnr_v = float(line.split()[-1])
    psnr_sum += psnr_v
    psnr_count += 1
    if psnr_count == n_frames_per_sec:
        avg_psnr = psnr_sum / n_frames_per_sec
        # print(f"PSNR for second {sec}: {avg_psnr:.2f}")
        print(f"{avg_psnr:.2f}")
        psnr_sum = 0
        psnr_count = 0
        sec += 1

if psnr_count > 0:
    avg_psnr = psnr_sum / psnr_count
    # print(f"PSNR for second {sec}: {avg_psnr:.2f}")
    print(f"{avg_psnr:.2f}")

