lbl_80A21B84:
/* 80A21B84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A21B88  7C 08 02 A6 */	mflr r0
/* 80A21B8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A21B90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A21B94  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A21B98  41 82 00 1C */	beq lbl_80A21BB4
/* 80A21B9C  3C A0 80 A2 */	lis r5, __vt__8cM3dGCyl@ha /* 0x80A25FBC@ha */
/* 80A21BA0  38 05 5F BC */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80A25FBC@l */
/* 80A21BA4  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80A21BA8  7C 80 07 35 */	extsh. r0, r4
/* 80A21BAC  40 81 00 08 */	ble lbl_80A21BB4
/* 80A21BB0  4B 8A D1 8D */	bl __dl__FPv
lbl_80A21BB4:
/* 80A21BB4  7F E3 FB 78 */	mr r3, r31
/* 80A21BB8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A21BBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A21BC0  7C 08 03 A6 */	mtlr r0
/* 80A21BC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A21BC8  4E 80 00 20 */	blr 
