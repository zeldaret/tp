lbl_80605CAC:
/* 80605CAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80605CB0  7C 08 02 A6 */	mflr r0
/* 80605CB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80605CB8  39 61 00 20 */	addi r11, r1, 0x20
/* 80605CBC  4B D5 C5 20 */	b _savegpr_29
/* 80605CC0  7C 7D 1B 78 */	mr r29, r3
/* 80605CC4  7C 9E 23 78 */	mr r30, r4
/* 80605CC8  4B A1 30 18 */	b fopAc_IsActor__FPv
/* 80605CCC  2C 03 00 00 */	cmpwi r3, 0
/* 80605CD0  41 82 00 8C */	beq lbl_80605D5C
/* 80605CD4  28 1D 00 00 */	cmplwi r29, 0
/* 80605CD8  41 82 00 0C */	beq lbl_80605CE4
/* 80605CDC  80 7D 00 04 */	lwz r3, 4(r29)
/* 80605CE0  48 00 00 08 */	b lbl_80605CE8
lbl_80605CE4:
/* 80605CE4  38 60 FF FF */	li r3, -1
lbl_80605CE8:
/* 80605CE8  4B A1 C4 50 */	b fpcM_IsCreating__FUi
/* 80605CEC  2C 03 00 00 */	cmpwi r3, 0
/* 80605CF0  40 82 00 6C */	bne lbl_80605D5C
/* 80605CF4  A8 1D 00 08 */	lha r0, 8(r29)
/* 80605CF8  2C 00 03 08 */	cmpwi r0, 0x308
/* 80605CFC  40 82 00 60 */	bne lbl_80605D5C
/* 80605D00  7F A3 EB 78 */	mr r3, r29
/* 80605D04  7F C4 F3 78 */	mr r4, r30
/* 80605D08  4B A1 4A D8 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80605D0C  3C 60 80 61 */	lis r3, lit_4141@ha
/* 80605D10  C0 03 FE 24 */	lfs f0, lit_4141@l(r3)
/* 80605D14  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80605D18  40 80 00 44 */	bge lbl_80605D5C
/* 80605D1C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80605D20  3C 60 80 61 */	lis r3, lit_3929@ha
/* 80605D24  C0 03 FD E4 */	lfs f0, lit_3929@l(r3)
/* 80605D28  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80605D2C  41 82 00 30 */	beq lbl_80605D5C
/* 80605D30  AB FD 04 DE */	lha r31, 0x4de(r29)
/* 80605D34  7F A3 EB 78 */	mr r3, r29
/* 80605D38  7F C4 F3 78 */	mr r4, r30
/* 80605D3C  4B A1 49 D4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80605D40  7C 03 F8 50 */	subf r0, r3, r31
/* 80605D44  7C 03 07 34 */	extsh r3, r0
/* 80605D48  4B D5 F3 88 */	b abs
/* 80605D4C  2C 03 20 00 */	cmpwi r3, 0x2000
/* 80605D50  40 80 00 0C */	bge lbl_80605D5C
/* 80605D54  7F A3 EB 78 */	mr r3, r29
/* 80605D58  48 00 00 08 */	b lbl_80605D60
lbl_80605D5C:
/* 80605D5C  38 60 00 00 */	li r3, 0
lbl_80605D60:
/* 80605D60  39 61 00 20 */	addi r11, r1, 0x20
/* 80605D64  4B D5 C4 C4 */	b _restgpr_29
/* 80605D68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80605D6C  7C 08 03 A6 */	mtlr r0
/* 80605D70  38 21 00 20 */	addi r1, r1, 0x20
/* 80605D74  4E 80 00 20 */	blr 
