lbl_8048DC1C:
/* 8048DC1C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048DC20  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 8048DC24  98 03 05 68 */	stb r0, 0x568(r3)
/* 8048DC28  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8048DC2C  54 00 17 BE */	srwi r0, r0, 0x1e
/* 8048DC30  98 03 05 69 */	stb r0, 0x569(r3)
/* 8048DC34  C0 03 04 EC */	lfs f0, 0x4ec(r3)
/* 8048DC38  3C 80 80 49 */	lis r4, lit_3752@ha
/* 8048DC3C  C0 24 DD 84 */	lfs f1, lit_3752@l(r4)
/* 8048DC40  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048DC44  D0 03 04 EC */	stfs f0, 0x4ec(r3)
/* 8048DC48  C0 03 04 F0 */	lfs f0, 0x4f0(r3)
/* 8048DC4C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048DC50  D0 03 04 F0 */	stfs f0, 0x4f0(r3)
/* 8048DC54  C0 03 04 F4 */	lfs f0, 0x4f4(r3)
/* 8048DC58  EC 00 00 72 */	fmuls f0, f0, f1
/* 8048DC5C  D0 03 04 F4 */	stfs f0, 0x4f4(r3)
/* 8048DC60  38 60 00 01 */	li r3, 1
/* 8048DC64  4E 80 00 20 */	blr 
