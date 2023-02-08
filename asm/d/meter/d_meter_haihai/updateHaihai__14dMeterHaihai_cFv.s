lbl_8020BEA4:
/* 8020BEA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8020BEA8  7C 08 02 A6 */	mflr r0
/* 8020BEAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8020BEB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8020BEB4  7C 7F 1B 78 */	mr r31, r3
/* 8020BEB8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 8020BEBC  48 00 00 45 */	bl playBckAnime__14dMeterHaihai_cFP18J2DAnmTransformKey
/* 8020BEC0  7F E3 FB 78 */	mr r3, r31
/* 8020BEC4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 8020BEC8  48 00 01 B1 */	bl playBtkAnime__14dMeterHaihai_cFP19J2DAnmTextureSRTKey
/* 8020BECC  7F E3 FB 78 */	mr r3, r31
/* 8020BED0  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 8020BED4  48 00 02 F9 */	bl playBpkAnime__14dMeterHaihai_cFP11J2DAnmColor
/* 8020BED8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8020BEDC  48 0E D7 B5 */	bl animation__9J2DScreenFv
/* 8020BEE0  7F E3 FB 78 */	mr r3, r31
/* 8020BEE4  C0 22 AD F0 */	lfs f1, lit_4165(r2)
/* 8020BEE8  4B FF FD 39 */	bl setScale__14dMeterHaihai_cFf
/* 8020BEEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8020BEF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8020BEF4  7C 08 03 A6 */	mtlr r0
/* 8020BEF8  38 21 00 10 */	addi r1, r1, 0x10
/* 8020BEFC  4E 80 00 20 */	blr 
