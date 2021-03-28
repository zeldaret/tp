lbl_807A7B9C:
/* 807A7B9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807A7BA0  7C 08 02 A6 */	mflr r0
/* 807A7BA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 807A7BA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807A7BAC  93 C1 00 08 */	stw r30, 8(r1)
/* 807A7BB0  7C 7E 1B 79 */	or. r30, r3, r3
/* 807A7BB4  7C 9F 23 78 */	mr r31, r4
/* 807A7BB8  41 82 00 0C */	beq lbl_807A7BC4
/* 807A7BBC  80 7E 00 04 */	lwz r3, 4(r30)
/* 807A7BC0  48 00 00 08 */	b lbl_807A7BC8
lbl_807A7BC4:
/* 807A7BC4  38 60 FF FF */	li r3, -1
lbl_807A7BC8:
/* 807A7BC8  4B 87 A5 70 */	b fpcM_IsCreating__FUi
/* 807A7BCC  2C 03 00 00 */	cmpwi r3, 0
/* 807A7BD0  40 82 00 64 */	bne lbl_807A7C34
/* 807A7BD4  7F C3 F3 78 */	mr r3, r30
/* 807A7BD8  4B 87 11 08 */	b fopAc_IsActor__FPv
/* 807A7BDC  2C 03 00 00 */	cmpwi r3, 0
/* 807A7BE0  41 82 00 54 */	beq lbl_807A7C34
/* 807A7BE4  A8 1E 00 08 */	lha r0, 8(r30)
/* 807A7BE8  2C 00 02 21 */	cmpwi r0, 0x221
/* 807A7BEC  40 82 00 48 */	bne lbl_807A7C34
/* 807A7BF0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 807A7BF4  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 807A7BF8  40 82 00 3C */	bne lbl_807A7C34
/* 807A7BFC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 807A7C00  28 00 00 00 */	cmplwi r0, 0
/* 807A7C04  41 82 00 30 */	beq lbl_807A7C34
/* 807A7C08  7F C3 F3 78 */	mr r3, r30
/* 807A7C0C  7F E4 FB 78 */	mr r4, r31
/* 807A7C10  4B 87 2B D0 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 807A7C14  3C 60 80 7B */	lis r3, data_807B01FC@ha
/* 807A7C18  38 83 01 FC */	addi r4, r3, data_807B01FC@l
/* 807A7C1C  C0 04 00 00 */	lfs f0, 0(r4)
/* 807A7C20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807A7C24  40 80 00 10 */	bge lbl_807A7C34
/* 807A7C28  3C 60 80 7B */	lis r3, data_807B01F8@ha
/* 807A7C2C  93 C3 01 F8 */	stw r30, data_807B01F8@l(r3)
/* 807A7C30  D0 24 00 00 */	stfs f1, 0(r4)
lbl_807A7C34:
/* 807A7C34  38 60 00 00 */	li r3, 0
/* 807A7C38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807A7C3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 807A7C40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807A7C44  7C 08 03 A6 */	mtlr r0
/* 807A7C48  38 21 00 10 */	addi r1, r1, 0x10
/* 807A7C4C  4E 80 00 20 */	blr 
