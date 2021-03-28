lbl_80D04B90:
/* 80D04B90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D04B94  7C 08 02 A6 */	mflr r0
/* 80D04B98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D04B9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D04BA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80D04BA4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D04BA8  7C 9F 23 78 */	mr r31, r4
/* 80D04BAC  41 82 00 38 */	beq lbl_80D04BE4
/* 80D04BB0  3C 80 80 D0 */	lis r4, __vt__15daObjSZbridge_c@ha
/* 80D04BB4  38 04 4D 40 */	addi r0, r4, __vt__15daObjSZbridge_c@l
/* 80D04BB8  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D04BBC  41 82 00 18 */	beq lbl_80D04BD4
/* 80D04BC0  3C 80 80 3B */	lis r4, __vt__16dBgS_MoveBgActor@ha
/* 80D04BC4  38 04 B9 A0 */	addi r0, r4, __vt__16dBgS_MoveBgActor@l
/* 80D04BC8  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80D04BCC  38 80 00 00 */	li r4, 0
/* 80D04BD0  4B 31 40 BC */	b __dt__10fopAc_ac_cFv
lbl_80D04BD4:
/* 80D04BD4  7F E0 07 35 */	extsh. r0, r31
/* 80D04BD8  40 81 00 0C */	ble lbl_80D04BE4
/* 80D04BDC  7F C3 F3 78 */	mr r3, r30
/* 80D04BE0  4B 5C A1 5C */	b __dl__FPv
lbl_80D04BE4:
/* 80D04BE4  7F C3 F3 78 */	mr r3, r30
/* 80D04BE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D04BEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D04BF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D04BF4  7C 08 03 A6 */	mtlr r0
/* 80D04BF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D04BFC  4E 80 00 20 */	blr 
