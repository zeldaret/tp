lbl_80CEEEC4:
/* 80CEEEC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEEEC8  7C 08 02 A6 */	mflr r0
/* 80CEEECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEEED0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEEED4  93 C1 00 08 */	stw r30, 8(r1)
/* 80CEEED8  7C 7E 1B 79 */	or. r30, r3, r3
/* 80CEEEDC  7C 9F 23 78 */	mr r31, r4
/* 80CEEEE0  41 82 00 3C */	beq lbl_80CEEF1C
/* 80CEEEE4  3C 80 80 CF */	lis r4, __vt__18dPa_levelEcallBack@ha /* 0x80CEF154@ha */
/* 80CEEEE8  38 04 F1 54 */	addi r0, r4, __vt__18dPa_levelEcallBack@l /* 0x80CEF154@l */
/* 80CEEEEC  90 1E 00 00 */	stw r0, 0(r30)
/* 80CEEEF0  81 83 00 00 */	lwz r12, 0(r3)
/* 80CEEEF4  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80CEEEF8  7D 89 03 A6 */	mtctr r12
/* 80CEEEFC  4E 80 04 21 */	bctrl 
/* 80CEEF00  7F C3 F3 78 */	mr r3, r30
/* 80CEEF04  38 80 00 00 */	li r4, 0
/* 80CEEF08  4B 58 F7 9D */	bl __dt__18JPAEmitterCallBackFv
/* 80CEEF0C  7F E0 07 35 */	extsh. r0, r31
/* 80CEEF10  40 81 00 0C */	ble lbl_80CEEF1C
/* 80CEEF14  7F C3 F3 78 */	mr r3, r30
/* 80CEEF18  4B 5D FE 25 */	bl __dl__FPv
lbl_80CEEF1C:
/* 80CEEF1C  7F C3 F3 78 */	mr r3, r30
/* 80CEEF20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEEF24  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CEEF28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEEF2C  7C 08 03 A6 */	mtlr r0
/* 80CEEF30  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEEF34  4E 80 00 20 */	blr 
