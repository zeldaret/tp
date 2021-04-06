lbl_8057D75C:
/* 8057D75C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057D760  7C 08 02 A6 */	mflr r0
/* 8057D764  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057D768  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057D76C  93 C1 00 08 */	stw r30, 8(r1)
/* 8057D770  7C 7E 1B 79 */	or. r30, r3, r3
/* 8057D774  7C 9F 23 78 */	mr r31, r4
/* 8057D778  41 82 00 38 */	beq lbl_8057D7B0
/* 8057D77C  3C 80 80 58 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x8057F86C@ha */
/* 8057D780  38 84 F8 6C */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x8057F86C@l */
/* 8057D784  90 9E 00 10 */	stw r4, 0x10(r30)
/* 8057D788  38 04 00 0C */	addi r0, r4, 0xc
/* 8057D78C  90 1E 00 14 */	stw r0, 0x14(r30)
/* 8057D790  38 04 00 18 */	addi r0, r4, 0x18
/* 8057D794  90 1E 00 24 */	stw r0, 0x24(r30)
/* 8057D798  38 80 00 00 */	li r4, 0
/* 8057D79C  4B AF 87 F9 */	bl __dt__9dBgS_AcchFv
/* 8057D7A0  7F E0 07 35 */	extsh. r0, r31
/* 8057D7A4  40 81 00 0C */	ble lbl_8057D7B0
/* 8057D7A8  7F C3 F3 78 */	mr r3, r30
/* 8057D7AC  4B D5 15 91 */	bl __dl__FPv
lbl_8057D7B0:
/* 8057D7B0  7F C3 F3 78 */	mr r3, r30
/* 8057D7B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057D7B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057D7BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057D7C0  7C 08 03 A6 */	mtlr r0
/* 8057D7C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8057D7C8  4E 80 00 20 */	blr 
