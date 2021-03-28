lbl_80144C30:
/* 80144C30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80144C34  7C 08 02 A6 */	mflr r0
/* 80144C38  90 01 00 14 */	stw r0, 0x14(r1)
/* 80144C3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80144C40  7C 7F 1B 78 */	mr r31, r3
/* 80144C44  48 01 64 75 */	bl getData__12daItemBase_cFv
/* 80144C48  A8 83 00 1C */	lha r4, 0x1c(r3)
/* 80144C4C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 80144C50  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 80144C54  7C 00 23 D6 */	divw r0, r0, r4
/* 80144C58  7C 03 07 34 */	extsh r3, r0
/* 80144C5C  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 80144C60  7C 00 1A 14 */	add r0, r0, r3
/* 80144C64  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80144C68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80144C6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80144C70  7C 08 03 A6 */	mtlr r0
/* 80144C74  38 21 00 10 */	addi r1, r1, 0x10
/* 80144C78  4E 80 00 20 */	blr 
