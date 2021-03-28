lbl_80D12EB4:
/* 80D12EB4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D12EB8  3C 80 80 43 */	lis r4, g_env_light@ha
/* 80D12EBC  38 84 CA 54 */	addi r4, r4, g_env_light@l
/* 80D12EC0  D0 04 10 94 */	stfs f0, 0x1094(r4)
/* 80D12EC4  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D12EC8  D0 04 10 98 */	stfs f0, 0x1098(r4)
/* 80D12ECC  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80D12ED0  D0 04 10 9C */	stfs f0, 0x109c(r4)
/* 80D12ED4  38 60 00 01 */	li r3, 1
/* 80D12ED8  4E 80 00 20 */	blr 
