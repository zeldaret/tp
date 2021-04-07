lbl_80AA755C:
/* 80AA755C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA7560  7C 08 02 A6 */	mflr r0
/* 80AA7564  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA7568  80 03 0A 1C */	lwz r0, 0xa1c(r3)
/* 80AA756C  90 03 0A 20 */	stw r0, 0xa20(r3)
/* 80AA7570  90 83 0A 1C */	stw r4, 0xa1c(r3)
/* 80AA7574  80 03 0A 1C */	lwz r0, 0xa1c(r3)
/* 80AA7578  1C A0 00 18 */	mulli r5, r0, 0x18
/* 80AA757C  3C 80 80 AB */	lis r4, ActionTable__14daNpcPasser2_c@ha /* 0x80AA8AA0@ha */
/* 80AA7580  38 04 8A A0 */	addi r0, r4, ActionTable__14daNpcPasser2_c@l /* 0x80AA8AA0@l */
/* 80AA7584  7C 00 2A 14 */	add r0, r0, r5
/* 80AA7588  90 03 0A 18 */	stw r0, 0xa18(r3)
/* 80AA758C  48 00 00 15 */	bl callInit__14daNpcPasser2_cFv
/* 80AA7590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA7594  7C 08 03 A6 */	mtlr r0
/* 80AA7598  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA759C  4E 80 00 20 */	blr 
