lbl_8028A728:
/* 8028A728  3C 80 80 43 */	lis r4, saoVVOutput___Q214JStudio_JStage14TAdaptor_actor@ha
/* 8028A72C  38 04 11 A0 */	addi r0, r4, saoVVOutput___Q214JStudio_JStage14TAdaptor_actor@l
/* 8028A730  7C 05 03 78 */	mr r5, r0
/* 8028A734  48 00 00 2C */	b lbl_8028A760
lbl_8028A738:
/* 8028A738  80 83 00 08 */	lwz r4, 8(r3)
/* 8028A73C  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8028A740  7C 84 02 14 */	add r4, r4, r0
/* 8028A744  28 05 00 00 */	cmplwi r5, 0
/* 8028A748  41 82 00 0C */	beq lbl_8028A754
/* 8028A74C  7C A0 2B 78 */	mr r0, r5
/* 8028A750  48 00 00 08 */	b lbl_8028A758
lbl_8028A754:
/* 8028A754  38 0D 8C 70 */	la r0, soOutput_none___Q27JStudio14TVariableValue(r13) /* 804511F0-_SDA_BASE_ */
lbl_8028A758:
/* 8028A758  90 04 00 10 */	stw r0, 0x10(r4)
/* 8028A75C  38 A5 00 20 */	addi r5, r5, 0x20
lbl_8028A760:
/* 8028A760  80 05 00 04 */	lwz r0, 4(r5)
/* 8028A764  2C 00 FF FF */	cmpwi r0, -1
/* 8028A768  40 82 FF D0 */	bne lbl_8028A738
/* 8028A76C  3C 80 80 43 */	lis r4, saoVVOutput_ANIMATION_FRAME___Q214JStudio_JStage14TAdaptor_actor@ha
/* 8028A770  38 04 12 04 */	addi r0, r4, saoVVOutput_ANIMATION_FRAME___Q214JStudio_JStage14TAdaptor_actor@l
/* 8028A774  7C 05 03 78 */	mr r5, r0
/* 8028A778  48 00 00 2C */	b lbl_8028A7A4
lbl_8028A77C:
/* 8028A77C  80 83 00 08 */	lwz r4, 8(r3)
/* 8028A780  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8028A784  7C 84 02 14 */	add r4, r4, r0
/* 8028A788  28 05 00 00 */	cmplwi r5, 0
/* 8028A78C  41 82 00 0C */	beq lbl_8028A798
/* 8028A790  7C A0 2B 78 */	mr r0, r5
/* 8028A794  48 00 00 08 */	b lbl_8028A79C
lbl_8028A798:
/* 8028A798  38 0D 8C 70 */	la r0, soOutput_none___Q27JStudio14TVariableValue(r13) /* 804511F0-_SDA_BASE_ */
lbl_8028A79C:
/* 8028A79C  90 04 00 10 */	stw r0, 0x10(r4)
/* 8028A7A0  38 A5 00 30 */	addi r5, r5, 0x30
lbl_8028A7A4:
/* 8028A7A4  80 05 00 04 */	lwz r0, 4(r5)
/* 8028A7A8  2C 00 FF FF */	cmpwi r0, -1
/* 8028A7AC  40 82 FF D0 */	bne lbl_8028A77C
/* 8028A7B0  4E 80 00 20 */	blr 
