lbl_804F64A8:
/* 804F64A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F64AC  7C 08 02 A6 */	mflr r0
/* 804F64B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F64B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F64B8  7C 7F 1B 78 */	mr r31, r3
/* 804F64BC  4B B2 28 24 */	b fopAc_IsActor__FPv
/* 804F64C0  2C 03 00 00 */	cmpwi r3, 0
/* 804F64C4  41 82 00 24 */	beq lbl_804F64E8
/* 804F64C8  A8 1F 00 08 */	lha r0, 8(r31)
/* 804F64CC  2C 00 01 EA */	cmpwi r0, 0x1ea
/* 804F64D0  40 82 00 18 */	bne lbl_804F64E8
/* 804F64D4  3C 60 80 50 */	lis r3, ba_count@ha
/* 804F64D8  38 83 AF 80 */	addi r4, r3, ba_count@l
/* 804F64DC  80 64 00 00 */	lwz r3, 0(r4)
/* 804F64E0  38 03 00 01 */	addi r0, r3, 1
/* 804F64E4  90 04 00 00 */	stw r0, 0(r4)
lbl_804F64E8:
/* 804F64E8  38 60 00 00 */	li r3, 0
/* 804F64EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F64F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F64F4  7C 08 03 A6 */	mtlr r0
/* 804F64F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F64FC  4E 80 00 20 */	blr 
