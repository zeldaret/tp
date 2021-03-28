lbl_80878344:
/* 80878344  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80878348  7C 08 02 A6 */	mflr r0
/* 8087834C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80878350  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 80878354  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 80878358  80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 8087835C  2C 00 00 00 */	cmpwi r0, 0
/* 80878360  41 82 00 8C */	beq lbl_808783EC
/* 80878364  88 03 00 A4 */	lbz r0, 0xa4(r3)
/* 80878368  28 00 00 00 */	cmplwi r0, 0
/* 8087836C  41 82 00 80 */	beq lbl_808783EC
/* 80878370  38 00 00 00 */	li r0, 0
/* 80878374  98 03 00 A5 */	stb r0, 0xa5(r3)
/* 80878378  98 03 00 A4 */	stb r0, 0xa4(r3)
/* 8087837C  3C 60 80 94 */	lis r3, daMP_OldVIPostCallback@ha
/* 80878380  38 63 49 30 */	addi r3, r3, daMP_OldVIPostCallback@l
/* 80878384  80 63 00 00 */	lwz r3, 0(r3)
/* 80878388  4B AD 3E 9C */	b VISetPostRetraceCallback
/* 8087838C  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 80878390  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 80878394  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80878398  2C 00 00 00 */	cmpwi r0, 0
/* 8087839C  40 82 00 0C */	bne lbl_808783A8
/* 808783A0  4B AD 31 B0 */	b DVDCancel
/* 808783A4  4B FF D6 41 */	bl daMP_ReadThreadCancel__Fv
lbl_808783A8:
/* 808783A8  4B FF DD 7D */	bl daMP_VideoDecodeThreadCancel__Fv
/* 808783AC  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 808783B0  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 808783B4  88 03 00 A7 */	lbz r0, 0xa7(r3)
/* 808783B8  28 00 00 00 */	cmplwi r0, 0
/* 808783BC  41 82 00 0C */	beq lbl_808783C8
/* 808783C0  4B FF E1 61 */	bl daMP_AudioDecodeThreadCancel__Fv
/* 808783C4  4B FF ED 95 */	bl daMP_audioQuitWithMSound__Fv
lbl_808783C8:
/* 808783C8  4B FF ED E9 */	bl daMP_PopUsedTextureSet__Fv
/* 808783CC  28 03 00 00 */	cmplwi r3, 0
/* 808783D0  40 82 FF F8 */	bne lbl_808783C8
/* 808783D4  3C 60 80 88 */	lis r3, daMP_ActivePlayer@ha
/* 808783D8  38 63 9B D0 */	addi r3, r3, daMP_ActivePlayer@l
/* 808783DC  C0 03 00 E0 */	lfs f0, 0xe0(r3)
/* 808783E0  D0 03 00 DC */	stfs f0, 0xdc(r3)
/* 808783E4  38 00 00 00 */	li r0, 0
/* 808783E8  90 03 00 E8 */	stw r0, 0xe8(r3)
lbl_808783EC:
/* 808783EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808783F0  7C 08 03 A6 */	mtlr r0
/* 808783F4  38 21 00 10 */	addi r1, r1, 0x10
/* 808783F8  4E 80 00 20 */	blr 
