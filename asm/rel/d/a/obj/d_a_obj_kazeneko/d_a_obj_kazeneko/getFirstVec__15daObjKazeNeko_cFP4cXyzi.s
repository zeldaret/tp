lbl_80C3CC40:
/* 80C3CC40  A8 63 07 48 */	lha r3, 0x748(r3)
/* 80C3CC44  54 A0 70 22 */	slwi r0, r5, 0xe
/* 80C3CC48  7C 03 02 14 */	add r0, r3, r0
/* 80C3CC4C  3C 60 80 C4 */	lis r3, M_attr__15daObjKazeNeko_c@ha /* 0x80C3D3DC@ha */
/* 80C3CC50  38 63 D3 DC */	addi r3, r3, M_attr__15daObjKazeNeko_c@l /* 0x80C3D3DC@l */
/* 80C3CC54  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80C3CC58  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80C3CC5C  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80C3CC60  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C3CC64  7C 65 02 14 */	add r3, r5, r0
/* 80C3CC68  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C3CC6C  EC 22 00 32 */	fmuls f1, f2, f0
/* 80C3CC70  7C 05 04 2E */	lfsx f0, r5, r0
/* 80C3CC74  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C3CC78  D0 04 00 00 */	stfs f0, 0(r4)
/* 80C3CC7C  3C 60 80 C4 */	lis r3, lit_3962@ha /* 0x80C3D468@ha */
/* 80C3CC80  C0 03 D4 68 */	lfs f0, lit_3962@l(r3)  /* 0x80C3D468@l */
/* 80C3CC84  D0 04 00 04 */	stfs f0, 4(r4)
/* 80C3CC88  D0 24 00 08 */	stfs f1, 8(r4)
/* 80C3CC8C  4E 80 00 20 */	blr 
