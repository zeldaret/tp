lbl_8030FD68:
/* 8030FD68  39 40 00 61 */	li r10, 0x61
/* 8030FD6C  3D 20 CC 01 */	lis r9, 0xCC01 /* 0xCC008000@ha */
/* 8030FD70  99 49 80 00 */	stb r10, 0x8000(r9)  /* 0xCC008000@l */
/* 8030FD74  39 0D 83 BC */	la r8, J3DTexImage1Ids(r13) /* 8045093C-_SDA_BASE_ */
/* 8030FD78  7C 08 18 AE */	lbzx r0, r8, r3
/* 8030FD7C  54 08 C0 0E */	slwi r8, r0, 0x18
/* 8030FD80  38 05 00 03 */	addi r0, r5, 3
/* 8030FD84  54 05 90 1A */	slwi r5, r0, 0x12
/* 8030FD88  54 84 D9 7E */	srwi r4, r4, 5
/* 8030FD8C  54 00 78 20 */	slwi r0, r0, 0xf
/* 8030FD90  7C 80 03 78 */	or r0, r4, r0
/* 8030FD94  7C A0 03 78 */	or r0, r5, r0
/* 8030FD98  7D 00 03 78 */	or r0, r8, r0
/* 8030FD9C  90 09 80 00 */	stw r0, -0x8000(r9)
/* 8030FDA0  2C 07 00 03 */	cmpwi r7, 3
/* 8030FDA4  4D 82 00 20 */	beqlr 
/* 8030FDA8  3C 00 00 10 */	lis r0, 0x10
/* 8030FDAC  7C 06 00 40 */	cmplw r6, r0
/* 8030FDB0  4C 80 00 20 */	bgelr 
/* 8030FDB4  99 49 80 00 */	stb r10, -0x8000(r9)
/* 8030FDB8  38 8D 83 C4 */	la r4, J3DTexImage2Ids(r13) /* 80450944-_SDA_BASE_ */
/* 8030FDBC  7C 04 18 AE */	lbzx r0, r4, r3
/* 8030FDC0  54 05 C0 0E */	slwi r5, r0, 0x18
/* 8030FDC4  38 07 00 03 */	addi r0, r7, 3
/* 8030FDC8  54 04 90 1A */	slwi r4, r0, 0x12
/* 8030FDCC  54 C3 D9 7E */	srwi r3, r6, 5
/* 8030FDD0  54 00 78 20 */	slwi r0, r0, 0xf
/* 8030FDD4  7C 60 03 78 */	or r0, r3, r0
/* 8030FDD8  7C 80 03 78 */	or r0, r4, r0
/* 8030FDDC  7C A0 03 78 */	or r0, r5, r0
/* 8030FDE0  90 09 80 00 */	stw r0, -0x8000(r9)
/* 8030FDE4  4E 80 00 20 */	blr 
