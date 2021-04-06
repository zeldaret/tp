lbl_80D672EC:
/* 80D672EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D672F0  7C 08 02 A6 */	mflr r0
/* 80D672F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D672F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D672FC  7C 7F 1B 78 */	mr r31, r3
/* 80D67300  3C 80 80 3E */	lis r4, m_cpadInfo__8mDoCPd_c@ha /* 0x803DD2E8@ha */
/* 80D67304  38 84 D2 E8 */	addi r4, r4, m_cpadInfo__8mDoCPd_c@l /* 0x803DD2E8@l */
/* 80D67308  80 84 00 34 */	lwz r4, 0x34(r4)
/* 80D6730C  54 80 05 EF */	rlwinm. r0, r4, 0, 0x17, 0x17
/* 80D67310  40 82 00 0C */	bne lbl_80D6731C
/* 80D67314  54 80 04 E7 */	rlwinm. r0, r4, 0, 0x13, 0x13
/* 80D67318  41 82 00 10 */	beq lbl_80D67328
lbl_80D6731C:
/* 80D6731C  7F E3 FB 78 */	mr r3, r31
/* 80D67320  48 00 02 CD */	bl fastLogoDispInit__9daTitle_cFv
/* 80D67324  48 00 00 18 */	b lbl_80D6733C
lbl_80D67328:
/* 80D67328  48 00 03 CD */	bl getDemoPrm__9daTitle_cFv
/* 80D6732C  2C 03 00 01 */	cmpwi r3, 1
/* 80D67330  40 82 00 0C */	bne lbl_80D6733C
/* 80D67334  7F E3 FB 78 */	mr r3, r31
/* 80D67338  48 00 00 19 */	bl logoDispAnmInit__9daTitle_cFv
lbl_80D6733C:
/* 80D6733C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D67340  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D67344  7C 08 03 A6 */	mtlr r0
/* 80D67348  38 21 00 10 */	addi r1, r1, 0x10
/* 80D6734C  4E 80 00 20 */	blr 
