lbl_8001DF30:
/* 8001DF30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8001DF34  7C 08 02 A6 */	mflr r0
/* 8001DF38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001DF3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8001DF40  93 C1 00 08 */	stw r30, 8(r1)
/* 8001DF44  7C 7E 1B 79 */	or. r30, r3, r3
/* 8001DF48  7C 9F 23 78 */	mr r31, r4
/* 8001DF4C  41 82 00 40 */	beq lbl_8001DF8C
/* 8001DF50  3C 80 80 3A */	lis r4, __vt__11dBgS_WtrChk@ha /* 0x803A37FC@ha */
/* 8001DF54  38 84 37 FC */	addi r4, r4, __vt__11dBgS_WtrChk@l /* 0x803A37FC@l */
/* 8001DF58  90 9E 00 0C */	stw r4, 0xc(r30)
/* 8001DF5C  38 04 00 0C */	addi r0, r4, 0xc
/* 8001DF60  90 1E 00 20 */	stw r0, 0x20(r30)
/* 8001DF64  38 04 00 18 */	addi r0, r4, 0x18
/* 8001DF68  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8001DF6C  38 04 00 24 */	addi r0, r4, 0x24
/* 8001DF70  90 1E 00 34 */	stw r0, 0x34(r30)
/* 8001DF74  38 80 00 00 */	li r4, 0
/* 8001DF78  48 05 AD 01 */	bl __dt__14dBgS_SplGrpChkFv
/* 8001DF7C  7F E0 07 35 */	extsh. r0, r31
/* 8001DF80  40 81 00 0C */	ble lbl_8001DF8C
/* 8001DF84  7F C3 F3 78 */	mr r3, r30
/* 8001DF88  48 2B 0D B5 */	bl __dl__FPv
lbl_8001DF8C:
/* 8001DF8C  7F C3 F3 78 */	mr r3, r30
/* 8001DF90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8001DF94  83 C1 00 08 */	lwz r30, 8(r1)
/* 8001DF98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8001DF9C  7C 08 03 A6 */	mtlr r0
/* 8001DFA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8001DFA4  4E 80 00 20 */	blr 
