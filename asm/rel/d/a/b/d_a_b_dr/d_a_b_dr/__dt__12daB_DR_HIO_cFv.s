lbl_805C6B94:
/* 805C6B94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805C6B98  7C 08 02 A6 */	mflr r0
/* 805C6B9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805C6BA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805C6BA4  7C 7F 1B 79 */	or. r31, r3, r3
/* 805C6BA8  41 82 00 1C */	beq lbl_805C6BC4
/* 805C6BAC  3C A0 80 5C */	lis r5, __vt__12daB_DR_HIO_c@ha
/* 805C6BB0  38 05 78 AC */	addi r0, r5, __vt__12daB_DR_HIO_c@l
/* 805C6BB4  90 1F 00 00 */	stw r0, 0(r31)
/* 805C6BB8  7C 80 07 35 */	extsh. r0, r4
/* 805C6BBC  40 81 00 08 */	ble lbl_805C6BC4
/* 805C6BC0  4B D0 81 7C */	b __dl__FPv
lbl_805C6BC4:
/* 805C6BC4  7F E3 FB 78 */	mr r3, r31
/* 805C6BC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805C6BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805C6BD0  7C 08 03 A6 */	mtlr r0
/* 805C6BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 805C6BD8  4E 80 00 20 */	blr 
