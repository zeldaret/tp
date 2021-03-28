lbl_8003F1F4:
/* 8003F1F4  3D 00 80 3F */	lis r8, mStatus__20dStage_roomControl_c@ha
/* 8003F1F8  39 08 60 94 */	addi r8, r8, mStatus__20dStage_roomControl_c@l
/* 8003F1FC  1C 03 04 04 */	mulli r0, r3, 0x404
/* 8003F200  7C 68 02 14 */	add r3, r8, r0
/* 8003F204  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8003F208  28 04 00 00 */	cmplwi r4, 0
/* 8003F20C  41 82 00 0C */	beq lbl_8003F218
/* 8003F210  C0 03 00 00 */	lfs f0, 0(r3)
/* 8003F214  D0 04 00 00 */	stfs f0, 0(r4)
lbl_8003F218:
/* 8003F218  28 06 00 00 */	cmplwi r6, 0
/* 8003F21C  41 82 00 0C */	beq lbl_8003F228
/* 8003F220  C0 03 00 08 */	lfs f0, 8(r3)
/* 8003F224  D0 06 00 00 */	stfs f0, 0(r6)
lbl_8003F228:
/* 8003F228  28 05 00 00 */	cmplwi r5, 0
/* 8003F22C  41 82 00 0C */	beq lbl_8003F238
/* 8003F230  C0 03 00 04 */	lfs f0, 4(r3)
/* 8003F234  D0 05 00 00 */	stfs f0, 0(r5)
lbl_8003F238:
/* 8003F238  28 07 00 00 */	cmplwi r7, 0
/* 8003F23C  4D 82 00 20 */	beqlr 
/* 8003F240  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8003F244  D0 07 00 00 */	stfs f0, 0(r7)
/* 8003F248  4E 80 00 20 */	blr 
