lbl_80BB1154:
/* 80BB1154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB1158  7C 08 02 A6 */	mflr r0
/* 80BB115C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB1160  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB1164  7C 7F 1B 78 */	mr r31, r3
/* 80BB1168  3D 00 80 BB */	lis r8, lit_5242@ha /* 0x80BB3A18@ha */
/* 80BB116C  C0 28 3A 18 */	lfs f1, lit_5242@l(r8)  /* 0x80BB3A18@l */
/* 80BB1170  4B FF FD 65 */	bl wall_pos__Q29daObjBm_c5Bgc_cFPC10fopAc_ac_cPCQ29daObjBm_c8BgcSrc_cisf
/* 80BB1174  80 1F 01 78 */	lwz r0, 0x178(r31)
/* 80BB1178  54 00 0F FE */	srwi r0, r0, 0x1f
/* 80BB117C  68 03 00 01 */	xori r3, r0, 1
/* 80BB1180  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB1184  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB1188  7C 08 03 A6 */	mtlr r0
/* 80BB118C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB1190  4E 80 00 20 */	blr 
