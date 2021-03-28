lbl_80D19200:
/* 80D19200  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D19204  7C 08 02 A6 */	mflr r0
/* 80D19208  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D1920C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D19210  7C 7F 1B 78 */	mr r31, r3
/* 80D19214  38 7F 05 90 */	addi r3, r31, 0x590
/* 80D19218  38 80 00 01 */	li r4, 1
/* 80D1921C  38 A0 00 00 */	li r5, 0
/* 80D19220  7F E6 FB 78 */	mr r6, r31
/* 80D19224  4B 36 A6 3C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D19228  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80D1922C  3C 80 80 D2 */	lis r4, ccSphSrc@ha
/* 80D19230  38 84 B6 E4 */	addi r4, r4, ccSphSrc@l
/* 80D19234  4B 36 B8 00 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80D19238  38 1F 05 90 */	addi r0, r31, 0x590
/* 80D1923C  90 1F 06 10 */	stw r0, 0x610(r31)
/* 80D19240  38 7F 06 F0 */	addi r3, r31, 0x6f0
/* 80D19244  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80D19248  4B 55 64 00 */	b SetC__8cM3dGSphFRC4cXyz
/* 80D1924C  80 1F 06 68 */	lwz r0, 0x668(r31)
/* 80D19250  60 00 00 04 */	ori r0, r0, 4
/* 80D19254  90 1F 06 68 */	stw r0, 0x668(r31)
/* 80D19258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D1925C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D19260  7C 08 03 A6 */	mtlr r0
/* 80D19264  38 21 00 10 */	addi r1, r1, 0x10
/* 80D19268  4E 80 00 20 */	blr 
