lbl_80B51B58:
/* 80B51B58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B51B5C  7C 08 02 A6 */	mflr r0
/* 80B51B60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B51B64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B51B68  93 C1 00 08 */	stw r30, 8(r1)
/* 80B51B6C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80B51B70  7C 9F 23 78 */	mr r31, r4
/* 80B51B74  41 82 00 38 */	beq lbl_80B51BAC
/* 80B51B78  3C 80 80 B5 */	lis r4, __vt__12dBgS_ObjAcch@ha /* 0x80B53288@ha */
/* 80B51B7C  38 84 32 88 */	addi r4, r4, __vt__12dBgS_ObjAcch@l /* 0x80B53288@l */
/* 80B51B80  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80B51B84  38 04 00 0C */	addi r0, r4, 0xc
/* 80B51B88  90 1E 00 14 */	stw r0, 0x14(r30)
/* 80B51B8C  38 04 00 18 */	addi r0, r4, 0x18
/* 80B51B90  90 1E 00 24 */	stw r0, 0x24(r30)
/* 80B51B94  38 80 00 00 */	li r4, 0
/* 80B51B98  4B 52 43 FD */	bl __dt__9dBgS_AcchFv
/* 80B51B9C  7F E0 07 35 */	extsh. r0, r31
/* 80B51BA0  40 81 00 0C */	ble lbl_80B51BAC
/* 80B51BA4  7F C3 F3 78 */	mr r3, r30
/* 80B51BA8  4B 77 D1 95 */	bl __dl__FPv
lbl_80B51BAC:
/* 80B51BAC  7F C3 F3 78 */	mr r3, r30
/* 80B51BB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B51BB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B51BB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B51BBC  7C 08 03 A6 */	mtlr r0
/* 80B51BC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B51BC4  4E 80 00 20 */	blr 
