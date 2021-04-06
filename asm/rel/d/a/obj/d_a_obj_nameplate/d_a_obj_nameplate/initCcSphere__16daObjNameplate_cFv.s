lbl_80594248:
/* 80594248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059424C  7C 08 02 A6 */	mflr r0
/* 80594250  90 01 00 14 */	stw r0, 0x14(r1)
/* 80594254  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80594258  7C 7F 1B 78 */	mr r31, r3
/* 8059425C  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 80594260  38 80 00 FF */	li r4, 0xff
/* 80594264  38 A0 00 FF */	li r5, 0xff
/* 80594268  7F E6 FB 78 */	mr r6, r31
/* 8059426C  4B AE F5 F5 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80594270  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 80594274  3C 80 80 59 */	lis r4, ccSphSrc@ha /* 0x80594EB4@ha */
/* 80594278  38 84 4E B4 */	addi r4, r4, ccSphSrc@l /* 0x80594EB4@l */
/* 8059427C  4B AF 07 B9 */	bl Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80594280  38 1F 05 A4 */	addi r0, r31, 0x5a4
/* 80594284  90 1F 06 24 */	stw r0, 0x624(r31)
/* 80594288  38 7F 07 04 */	addi r3, r31, 0x704
/* 8059428C  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80594290  4B CD B3 B9 */	bl SetC__8cM3dGSphFRC4cXyz
/* 80594294  38 7F 07 04 */	addi r3, r31, 0x704
/* 80594298  3C 80 80 59 */	lis r4, M_attr__16daObjNameplate_c@ha /* 0x80594E74@ha */
/* 8059429C  C0 24 4E 74 */	lfs f1, M_attr__16daObjNameplate_c@l(r4)  /* 0x80594E74@l */
/* 805942A0  4B CD B4 69 */	bl SetR__8cM3dGSphFf
/* 805942A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805942A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805942AC  7C 08 03 A6 */	mtlr r0
/* 805942B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805942B4  4E 80 00 20 */	blr 
