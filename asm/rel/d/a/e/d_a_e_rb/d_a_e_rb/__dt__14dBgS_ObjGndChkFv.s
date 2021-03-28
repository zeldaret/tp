lbl_80763D38:
/* 80763D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80763D3C  7C 08 02 A6 */	mflr r0
/* 80763D40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80763D44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80763D48  93 C1 00 08 */	stw r30, 8(r1)
/* 80763D4C  7C 7E 1B 79 */	or. r30, r3, r3
/* 80763D50  7C 9F 23 78 */	mr r31, r4
/* 80763D54  41 82 00 40 */	beq lbl_80763D94
/* 80763D58  3C 80 80 76 */	lis r4, __vt__14dBgS_ObjGndChk@ha
/* 80763D5C  38 84 4F 3C */	addi r4, r4, __vt__14dBgS_ObjGndChk@l
/* 80763D60  90 9E 00 10 */	stw r4, 0x10(r30)
/* 80763D64  38 04 00 0C */	addi r0, r4, 0xc
/* 80763D68  90 1E 00 20 */	stw r0, 0x20(r30)
/* 80763D6C  38 04 00 18 */	addi r0, r4, 0x18
/* 80763D70  90 1E 00 3C */	stw r0, 0x3c(r30)
/* 80763D74  38 04 00 24 */	addi r0, r4, 0x24
/* 80763D78  90 1E 00 4C */	stw r0, 0x4c(r30)
/* 80763D7C  38 80 00 00 */	li r4, 0
/* 80763D80  4B 91 38 70 */	b __dt__11dBgS_GndChkFv
/* 80763D84  7F E0 07 35 */	extsh. r0, r31
/* 80763D88  40 81 00 0C */	ble lbl_80763D94
/* 80763D8C  7F C3 F3 78 */	mr r3, r30
/* 80763D90  4B B6 AF AC */	b __dl__FPv
lbl_80763D94:
/* 80763D94  7F C3 F3 78 */	mr r3, r30
/* 80763D98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80763D9C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80763DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80763DA4  7C 08 03 A6 */	mtlr r0
/* 80763DA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80763DAC  4E 80 00 20 */	blr 
