lbl_8028C684:
/* 8028C684  3C 80 80 43 */	lis r4, saoVVOutput___Q214JStudio_JStage12TAdaptor_fog@ha /* 0x8043139C@ha */
/* 8028C688  38 04 13 9C */	addi r0, r4, saoVVOutput___Q214JStudio_JStage12TAdaptor_fog@l /* 0x8043139C@l */
/* 8028C68C  7C 05 03 78 */	mr r5, r0
/* 8028C690  48 00 00 2C */	b lbl_8028C6BC
lbl_8028C694:
/* 8028C694  80 83 00 08 */	lwz r4, 8(r3)
/* 8028C698  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8028C69C  7C 84 02 14 */	add r4, r4, r0
/* 8028C6A0  28 05 00 00 */	cmplwi r5, 0
/* 8028C6A4  41 82 00 0C */	beq lbl_8028C6B0
/* 8028C6A8  7C A0 2B 78 */	mr r0, r5
/* 8028C6AC  48 00 00 08 */	b lbl_8028C6B4
lbl_8028C6B0:
/* 8028C6B0  38 0D 8C 70 */	la r0, soOutput_none___Q27JStudio14TVariableValue(r13) /* 804511F0-_SDA_BASE_ */
lbl_8028C6B4:
/* 8028C6B4  90 04 00 10 */	stw r0, 0x10(r4)
/* 8028C6B8  38 A5 00 20 */	addi r5, r5, 0x20
lbl_8028C6BC:
/* 8028C6BC  80 05 00 04 */	lwz r0, 4(r5)
/* 8028C6C0  2C 00 FF FF */	cmpwi r0, -1
/* 8028C6C4  40 82 FF D0 */	bne lbl_8028C694
/* 8028C6C8  4E 80 00 20 */	blr 
