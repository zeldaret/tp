lbl_8059AA74:
/* 8059AA74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059AA78  7C 08 02 A6 */	mflr r0
/* 8059AA7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059AA80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059AA84  7C 7F 1B 79 */	or. r31, r3, r3
/* 8059AA88  41 82 00 1C */	beq lbl_8059AAA4
/* 8059AA8C  3C A0 80 5A */	lis r5, __vt__8cM3dGCyl@ha
/* 8059AA90  38 05 B3 DC */	addi r0, r5, __vt__8cM3dGCyl@l
/* 8059AA94  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8059AA98  7C 80 07 35 */	extsh. r0, r4
/* 8059AA9C  40 81 00 08 */	ble lbl_8059AAA4
/* 8059AAA0  4B D3 42 9C */	b __dl__FPv
lbl_8059AAA4:
/* 8059AAA4  7F E3 FB 78 */	mr r3, r31
/* 8059AAA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059AAAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059AAB0  7C 08 03 A6 */	mtlr r0
/* 8059AAB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8059AAB8  4E 80 00 20 */	blr 
