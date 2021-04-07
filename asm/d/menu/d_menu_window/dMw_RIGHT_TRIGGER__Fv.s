lbl_801F9FF4:
/* 801F9FF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801F9FF8  7C 08 02 A6 */	mflr r0
/* 801F9FFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801FA000  3C 60 80 3E */	lis r3, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 801FA004  38 63 D2 E8 */	addi r3, r3, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 801FA008  80 03 00 34 */	lwz r0, 0x34(r3)
/* 801FA00C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 801FA010  41 82 00 18 */	beq lbl_801FA028
/* 801FA014  4B FF FF 71 */	bl dMw_UP_TRIGGER__Fv
/* 801FA018  2C 03 00 00 */	cmpwi r3, 0
/* 801FA01C  40 82 00 0C */	bne lbl_801FA028
/* 801FA020  38 60 00 01 */	li r3, 1
/* 801FA024  48 00 00 08 */	b lbl_801FA02C
lbl_801FA028:
/* 801FA028  38 60 00 00 */	li r3, 0
lbl_801FA02C:
/* 801FA02C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801FA030  7C 08 03 A6 */	mtlr r0
/* 801FA034  38 21 00 10 */	addi r1, r1, 0x10
/* 801FA038  4E 80 00 20 */	blr 
