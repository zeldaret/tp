lbl_802DDEE0:
/* 802DDEE0  80 A3 00 90 */	lwz r5, 0x90(r3)
/* 802DDEE4  38 C0 00 00 */	li r6, 0
/* 802DDEE8  48 00 00 50 */	b lbl_802DDF38
lbl_802DDEEC:
/* 802DDEEC  2C 06 00 00 */	cmpwi r6, 0
/* 802DDEF0  40 82 00 0C */	bne lbl_802DDEFC
/* 802DDEF4  38 00 00 00 */	li r0, 0
/* 802DDEF8  48 00 00 0C */	b lbl_802DDF04
lbl_802DDEFC:
/* 802DDEFC  80 03 00 94 */	lwz r0, 0x94(r3)
/* 802DDF00  7C 00 28 50 */	subf r0, r0, r5
lbl_802DDF04:
/* 802DDF04  90 05 00 00 */	stw r0, 0(r5)
/* 802DDF08  80 83 00 98 */	lwz r4, 0x98(r3)
/* 802DDF0C  38 04 FF FF */	addi r0, r4, -1
/* 802DDF10  7C 06 00 40 */	cmplw r6, r0
/* 802DDF14  40 82 00 0C */	bne lbl_802DDF20
/* 802DDF18  38 00 00 00 */	li r0, 0
/* 802DDF1C  48 00 00 0C */	b lbl_802DDF28
lbl_802DDF20:
/* 802DDF20  80 03 00 94 */	lwz r0, 0x94(r3)
/* 802DDF24  7C 05 02 14 */	add r0, r5, r0
lbl_802DDF28:
/* 802DDF28  90 05 00 04 */	stw r0, 4(r5)
/* 802DDF2C  80 03 00 94 */	lwz r0, 0x94(r3)
/* 802DDF30  7C A5 02 14 */	add r5, r5, r0
/* 802DDF34  38 C6 00 01 */	addi r6, r6, 1
lbl_802DDF38:
/* 802DDF38  80 03 00 98 */	lwz r0, 0x98(r3)
/* 802DDF3C  7C 06 00 40 */	cmplw r6, r0
/* 802DDF40  41 80 FF AC */	blt lbl_802DDEEC
/* 802DDF44  80 03 00 94 */	lwz r0, 0x94(r3)
/* 802DDF48  7C 00 28 50 */	subf r0, r0, r5
/* 802DDF4C  90 03 00 A8 */	stw r0, 0xa8(r3)
/* 802DDF50  80 03 00 90 */	lwz r0, 0x90(r3)
/* 802DDF54  90 03 00 A4 */	stw r0, 0xa4(r3)
/* 802DDF58  38 00 00 00 */	li r0, 0
/* 802DDF5C  90 03 00 9C */	stw r0, 0x9c(r3)
/* 802DDF60  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 802DDF64  4E 80 00 20 */	blr 
