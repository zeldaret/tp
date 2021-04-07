lbl_80CA6914:
/* 80CA6914  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA6918  7C 08 02 A6 */	mflr r0
/* 80CA691C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA6920  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CA6924  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CA6928  41 82 00 1C */	beq lbl_80CA6944
/* 80CA692C  3C A0 80 CA */	lis r5, __vt__8cM3dGCyl@ha /* 0x80CA7A7C@ha */
/* 80CA6930  38 05 7A 7C */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80CA7A7C@l */
/* 80CA6934  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CA6938  7C 80 07 35 */	extsh. r0, r4
/* 80CA693C  40 81 00 08 */	ble lbl_80CA6944
/* 80CA6940  4B 62 83 FD */	bl __dl__FPv
lbl_80CA6944:
/* 80CA6944  7F E3 FB 78 */	mr r3, r31
/* 80CA6948  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CA694C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA6950  7C 08 03 A6 */	mtlr r0
/* 80CA6954  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA6958  4E 80 00 20 */	blr 
