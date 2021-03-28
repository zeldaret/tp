lbl_80657D2C:
/* 80657D2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80657D30  7C 08 02 A6 */	mflr r0
/* 80657D34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80657D38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80657D3C  7C 7F 1B 78 */	mr r31, r3
/* 80657D40  38 7F 05 88 */	addi r3, r31, 0x588
/* 80657D44  38 80 00 FF */	li r4, 0xff
/* 80657D48  38 A0 00 FF */	li r5, 0xff
/* 80657D4C  7F E6 FB 78 */	mr r6, r31
/* 80657D50  4B A2 BB 10 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80657D54  38 7F 05 C4 */	addi r3, r31, 0x5c4
/* 80657D58  3C 80 80 66 */	lis r4, data_80658408@ha
/* 80657D5C  38 84 84 08 */	addi r4, r4, data_80658408@l
/* 80657D60  4B A2 CC D4 */	b Set__8dCcD_SphFRC11dCcD_SrcSph
/* 80657D64  38 1F 05 88 */	addi r0, r31, 0x588
/* 80657D68  90 1F 06 08 */	stw r0, 0x608(r31)
/* 80657D6C  38 7F 06 E8 */	addi r3, r31, 0x6e8
/* 80657D70  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80657D74  4B C1 78 D4 */	b SetC__8cM3dGSphFRC4cXyz
/* 80657D78  38 7F 06 E8 */	addi r3, r31, 0x6e8
/* 80657D7C  3C 80 80 66 */	lis r4, M_attr__13daCoachFire_c@ha
/* 80657D80  C0 24 83 E8 */	lfs f1, M_attr__13daCoachFire_c@l(r4)
/* 80657D84  4B C1 79 84 */	b SetR__8cM3dGSphFf
/* 80657D88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80657D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80657D90  7C 08 03 A6 */	mtlr r0
/* 80657D94  38 21 00 10 */	addi r1, r1, 0x10
/* 80657D98  4E 80 00 20 */	blr 
