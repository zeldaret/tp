lbl_80CAFA58:
/* 80CAFA58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CAFA5C  7C 08 02 A6 */	mflr r0
/* 80CAFA60  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CAFA64  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CAFA68  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CAFA6C  41 82 00 1C */	beq lbl_80CAFA88
/* 80CAFA70  3C A0 80 CB */	lis r5, __vt__8cM3dGCyl@ha
/* 80CAFA74  38 05 0B C0 */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80CAFA78  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80CAFA7C  7C 80 07 35 */	extsh. r0, r4
/* 80CAFA80  40 81 00 08 */	ble lbl_80CAFA88
/* 80CAFA84  4B 61 F2 B8 */	b __dl__FPv
lbl_80CAFA88:
/* 80CAFA88  7F E3 FB 78 */	mr r3, r31
/* 80CAFA8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CAFA90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CAFA94  7C 08 03 A6 */	mtlr r0
/* 80CAFA98  38 21 00 10 */	addi r1, r1, 0x10
/* 80CAFA9C  4E 80 00 20 */	blr 
