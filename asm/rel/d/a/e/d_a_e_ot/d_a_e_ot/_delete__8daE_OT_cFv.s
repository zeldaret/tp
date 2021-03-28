lbl_8073C058:
/* 8073C058  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8073C05C  7C 08 02 A6 */	mflr r0
/* 8073C060  90 01 00 14 */	stw r0, 0x14(r1)
/* 8073C064  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8073C068  7C 7F 1B 78 */	mr r31, r3
/* 8073C06C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8073C070  3C 80 80 74 */	lis r4, stringBase0@ha
/* 8073C074  38 84 CF 6C */	addi r4, r4, stringBase0@l
/* 8073C078  4B 8F 0F 90 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8073C07C  88 1F 0B 94 */	lbz r0, 0xb94(r31)
/* 8073C080  28 00 00 00 */	cmplwi r0, 0
/* 8073C084  41 82 00 10 */	beq lbl_8073C094
/* 8073C088  38 00 00 00 */	li r0, 0
/* 8073C08C  3C 60 80 74 */	lis r3, struct_8073D2AC+0x1@ha
/* 8073C090  98 03 D2 AD */	stb r0, struct_8073D2AC+0x1@l(r3)
lbl_8073C094:
/* 8073C094  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8073C098  28 00 00 00 */	cmplwi r0, 0
/* 8073C09C  41 82 00 18 */	beq lbl_8073C0B4
/* 8073C0A0  38 7F 05 C0 */	addi r3, r31, 0x5c0
/* 8073C0A4  81 9F 05 C0 */	lwz r12, 0x5c0(r31)
/* 8073C0A8  81 8C 00 08 */	lwz r12, 8(r12)
/* 8073C0AC  7D 89 03 A6 */	mtctr r12
/* 8073C0B0  4E 80 04 21 */	bctrl 
lbl_8073C0B4:
/* 8073C0B4  38 60 00 01 */	li r3, 1
/* 8073C0B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8073C0BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8073C0C0  7C 08 03 A6 */	mtlr r0
/* 8073C0C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8073C0C8  4E 80 00 20 */	blr 
