lbl_8029DAC8:
/* 8029DAC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029DACC  7C 08 02 A6 */	mflr r0
/* 8029DAD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029DAD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029DAD8  38 60 60 00 */	li r3, 0x6000
/* 8029DADC  80 8D 8C 90 */	lwz r4, JASDram(r13)
/* 8029DAE0  38 A0 00 20 */	li r5, 0x20
/* 8029DAE4  48 03 12 2D */	bl __nwa__FUlP7JKRHeapi
/* 8029DAE8  90 6D 8D 68 */	stw r3, CH_BUF__6JASDsp(r13)
/* 8029DAEC  38 60 00 80 */	li r3, 0x80
/* 8029DAF0  80 8D 8C 90 */	lwz r4, JASDram(r13)
/* 8029DAF4  38 A0 00 20 */	li r5, 0x20
/* 8029DAF8  48 03 12 19 */	bl __nwa__FUlP7JKRHeapi
/* 8029DAFC  90 6D 8D 6C */	stw r3, FX_BUF__6JASDsp(r13)
/* 8029DB00  80 6D 8D 68 */	lwz r3, CH_BUF__6JASDsp(r13)
/* 8029DB04  38 80 60 00 */	li r4, 0x6000
/* 8029DB08  4B FF 19 79 */	bl bzero__7JASCalcFPvUl
/* 8029DB0C  80 6D 8D 6C */	lwz r3, FX_BUF__6JASDsp(r13)
/* 8029DB10  38 80 00 80 */	li r4, 0x80
/* 8029DB14  4B FF 19 6D */	bl bzero__7JASCalcFPvUl
/* 8029DB18  3B E0 00 00 */	li r31, 0
/* 8029DB1C  48 00 00 18 */	b lbl_8029DB34
lbl_8029DB20:
/* 8029DB20  7F E3 FB 78 */	mr r3, r31
/* 8029DB24  38 80 00 00 */	li r4, 0
/* 8029DB28  38 A0 00 00 */	li r5, 0
/* 8029DB2C  48 00 00 4D */	bl setFXLine__6JASDspFUcPsPQ26JASDsp13FxlineConfig_
/* 8029DB30  3B FF 00 01 */	addi r31, r31, 1
lbl_8029DB34:
/* 8029DB34  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 8029DB38  28 00 00 04 */	cmplwi r0, 4
/* 8029DB3C  41 80 FF E4 */	blt lbl_8029DB20
/* 8029DB40  38 60 00 40 */	li r3, 0x40
/* 8029DB44  80 8D 8D 68 */	lwz r4, CH_BUF__6JASDsp(r13)
/* 8029DB48  3C A0 80 3A */	lis r5, DSPRES_FILTER__6JASDsp@ha /* 0x8039B3A0@ha */
/* 8029DB4C  38 A5 B3 A0 */	addi r5, r5, DSPRES_FILTER__6JASDsp@l /* 0x8039B3A0@l */
/* 8029DB50  3C C0 80 3A */	lis r6, DSPADPCM_FILTER__6JASDsp@ha /* 0x8039B360@ha */
/* 8029DB54  38 C6 B3 60 */	addi r6, r6, DSPADPCM_FILTER__6JASDsp@l /* 0x8039B360@l */
/* 8029DB58  80 ED 8D 6C */	lwz r7, FX_BUF__6JASDsp(r13)
/* 8029DB5C  48 00 0A 05 */	bl DsetupTable__FUlUlUlUlUl
/* 8029DB60  4B FF FF 0D */	bl flushBuffer__6JASDspFv
/* 8029DB64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029DB68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029DB6C  7C 08 03 A6 */	mtlr r0
/* 8029DB70  38 21 00 10 */	addi r1, r1, 0x10
/* 8029DB74  4E 80 00 20 */	blr 
