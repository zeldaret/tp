lbl_8049FD6C:
/* 8049FD6C  80 03 09 64 */	lwz r0, 0x964(r3)
/* 8049FD70  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8049FD74  41 82 00 38 */	beq lbl_8049FDAC
/* 8049FD78  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 8049FD7C  28 00 00 01 */	cmplwi r0, 1
/* 8049FD80  4C 82 00 20 */	bnelr 
/* 8049FD84  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8049FD88  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8049FD8C  80 84 5D B4 */	lwz r4, 0x5db4(r4)
/* 8049FD90  C0 04 35 34 */	lfs f0, 0x3534(r4)
/* 8049FD94  D0 03 09 90 */	stfs f0, 0x990(r3)
/* 8049FD98  C0 04 35 38 */	lfs f0, 0x3538(r4)
/* 8049FD9C  D0 03 09 94 */	stfs f0, 0x994(r3)
/* 8049FDA0  C0 04 35 3C */	lfs f0, 0x353c(r4)
/* 8049FDA4  D0 03 09 98 */	stfs f0, 0x998(r3)
/* 8049FDA8  4E 80 00 20 */	blr 
lbl_8049FDAC:
/* 8049FDAC  88 03 09 57 */	lbz r0, 0x957(r3)
/* 8049FDB0  28 00 00 00 */	cmplwi r0, 0
/* 8049FDB4  41 82 00 20 */	beq lbl_8049FDD4
/* 8049FDB8  C0 03 09 AC */	lfs f0, 0x9ac(r3)
/* 8049FDBC  D0 03 09 90 */	stfs f0, 0x990(r3)
/* 8049FDC0  C0 03 09 B0 */	lfs f0, 0x9b0(r3)
/* 8049FDC4  D0 03 09 94 */	stfs f0, 0x994(r3)
/* 8049FDC8  C0 03 09 B4 */	lfs f0, 0x9b4(r3)
/* 8049FDCC  D0 03 09 98 */	stfs f0, 0x998(r3)
/* 8049FDD0  4E 80 00 20 */	blr 
lbl_8049FDD4:
/* 8049FDD4  88 C3 09 51 */	lbz r6, 0x951(r3)
/* 8049FDD8  54 C4 10 3A */	slwi r4, r6, 2
/* 8049FDDC  48 00 00 80 */	b lbl_8049FE5C
lbl_8049FDE0:
/* 8049FDE0  38 04 06 C0 */	addi r0, r4, 0x6c0
/* 8049FDE4  7C 03 00 2E */	lwzx r0, r3, r0
/* 8049FDE8  28 00 00 00 */	cmplwi r0, 0
/* 8049FDEC  41 82 00 28 */	beq lbl_8049FE14
/* 8049FDF0  7C 83 22 14 */	add r4, r3, r4
/* 8049FDF4  80 84 06 C0 */	lwz r4, 0x6c0(r4)
/* 8049FDF8  C0 04 05 38 */	lfs f0, 0x538(r4)
/* 8049FDFC  D0 03 09 90 */	stfs f0, 0x990(r3)
/* 8049FE00  C0 04 05 3C */	lfs f0, 0x53c(r4)
/* 8049FE04  D0 03 09 94 */	stfs f0, 0x994(r3)
/* 8049FE08  C0 04 05 40 */	lfs f0, 0x540(r4)
/* 8049FE0C  D0 03 09 98 */	stfs f0, 0x998(r3)
/* 8049FE10  4E 80 00 20 */	blr 
lbl_8049FE14:
/* 8049FE14  38 06 07 18 */	addi r0, r6, 0x718
/* 8049FE18  7C 03 00 AE */	lbzx r0, r3, r0
/* 8049FE1C  28 00 00 00 */	cmplwi r0, 0
/* 8049FE20  41 82 00 28 */	beq lbl_8049FE48
/* 8049FE24  1C 06 00 0C */	mulli r0, r6, 0xc
/* 8049FE28  7C 83 02 14 */	add r4, r3, r0
/* 8049FE2C  C0 04 06 DC */	lfs f0, 0x6dc(r4)
/* 8049FE30  D0 03 09 90 */	stfs f0, 0x990(r3)
/* 8049FE34  C0 04 06 E0 */	lfs f0, 0x6e0(r4)
/* 8049FE38  D0 03 09 94 */	stfs f0, 0x994(r3)
/* 8049FE3C  C0 04 06 E4 */	lfs f0, 0x6e4(r4)
/* 8049FE40  D0 03 09 98 */	stfs f0, 0x998(r3)
/* 8049FE44  4E 80 00 20 */	blr 
lbl_8049FE48:
/* 8049FE48  88 A3 09 51 */	lbz r5, 0x951(r3)
/* 8049FE4C  38 05 00 01 */	addi r0, r5, 1
/* 8049FE50  98 03 09 51 */	stb r0, 0x951(r3)
/* 8049FE54  38 C6 00 01 */	addi r6, r6, 1
/* 8049FE58  38 84 00 04 */	addi r4, r4, 4
lbl_8049FE5C:
/* 8049FE5C  88 03 09 50 */	lbz r0, 0x950(r3)
/* 8049FE60  7C 06 00 00 */	cmpw r6, r0
/* 8049FE64  41 80 FF 7C */	blt lbl_8049FDE0
/* 8049FE68  4E 80 00 20 */	blr 
