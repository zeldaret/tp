lbl_8046E9EC:
/* 8046E9EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046E9F0  7C 08 02 A6 */	mflr r0
/* 8046E9F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046E9F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046E9FC  93 C1 00 08 */	stw r30, 8(r1)
/* 8046EA00  7C 7E 1B 78 */	mr r30, r3
/* 8046EA04  7C 9F 23 78 */	mr r31, r4
/* 8046EA08  80 83 07 24 */	lwz r4, 0x724(r3)
/* 8046EA0C  38 04 00 01 */	addi r0, r4, 1
/* 8046EA10  90 03 07 24 */	stw r0, 0x724(r3)
/* 8046EA14  80 A3 07 24 */	lwz r5, 0x724(r3)
/* 8046EA18  38 80 00 03 */	li r4, 3
/* 8046EA1C  7C 05 23 96 */	divwu r0, r5, r4
/* 8046EA20  7C 00 21 D6 */	mullw r0, r0, r4
/* 8046EA24  7C 00 28 51 */	subf. r0, r0, r5
/* 8046EA28  40 82 00 20 */	bne lbl_8046EA48
/* 8046EA2C  A8 9E 07 28 */	lha r4, 0x728(r30)
/* 8046EA30  38 04 FF FF */	addi r0, r4, -1
/* 8046EA34  B0 1E 07 28 */	sth r0, 0x728(r30)
/* 8046EA38  A8 1E 07 28 */	lha r0, 0x728(r30)
/* 8046EA3C  2C 00 FF EC */	cmpwi r0, -20
/* 8046EA40  40 82 00 08 */	bne lbl_8046EA48
/* 8046EA44  4B BA B2 39 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8046EA48:
/* 8046EA48  38 1E 05 6C */	addi r0, r30, 0x56c
/* 8046EA4C  90 1F 00 00 */	stw r0, 0(r31)
/* 8046EA50  7F C3 F3 78 */	mr r3, r30
/* 8046EA54  4B FF FC 81 */	bl setBaseMtx__14daObjBurnBox_cFv
/* 8046EA58  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8046EA5C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 8046EA60  2C 00 00 01 */	cmpwi r0, 1
/* 8046EA64  41 82 00 3C */	beq lbl_8046EAA0
/* 8046EA68  40 80 00 10 */	bge lbl_8046EA78
/* 8046EA6C  2C 00 00 00 */	cmpwi r0, 0
/* 8046EA70  40 80 00 10 */	bge lbl_8046EA80
/* 8046EA74  48 00 00 2C */	b lbl_8046EAA0
lbl_8046EA78:
/* 8046EA78  2C 00 00 03 */	cmpwi r0, 3
/* 8046EA7C  40 80 00 24 */	bge lbl_8046EAA0
lbl_8046EA80:
/* 8046EA80  38 7E 07 0C */	addi r3, r30, 0x70c
/* 8046EA84  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 8046EA88  4B E0 07 55 */	bl SetC__8cM3dGCylFRC4cXyz
/* 8046EA8C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8046EA90  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8046EA94  38 63 23 3C */	addi r3, r3, 0x233c
/* 8046EA98  38 9E 05 E8 */	addi r4, r30, 0x5e8
/* 8046EA9C  4B DF 61 0D */	bl Set__4cCcSFP8cCcD_Obj
lbl_8046EAA0:
/* 8046EAA0  38 60 00 01 */	li r3, 1
/* 8046EAA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046EAA8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8046EAAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046EAB0  7C 08 03 A6 */	mtlr r0
/* 8046EAB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8046EAB8  4E 80 00 20 */	blr 
