lbl_8028B9D4:
/* 8028B9D4  3C 80 80 43 */	lis r4, saoVVOutput___Q214JStudio_JStage15TAdaptor_camera@ha /* 0x804312D4@ha */
/* 8028B9D8  38 04 12 D4 */	addi r0, r4, saoVVOutput___Q214JStudio_JStage15TAdaptor_camera@l /* 0x804312D4@l */
/* 8028B9DC  7C 05 03 78 */	mr r5, r0
/* 8028B9E0  48 00 00 2C */	b lbl_8028BA0C
lbl_8028B9E4:
/* 8028B9E4  80 83 00 08 */	lwz r4, 8(r3)
/* 8028B9E8  1C 00 00 14 */	mulli r0, r0, 0x14
/* 8028B9EC  7C 84 02 14 */	add r4, r4, r0
/* 8028B9F0  28 05 00 00 */	cmplwi r5, 0
/* 8028B9F4  41 82 00 0C */	beq lbl_8028BA00
/* 8028B9F8  7C A0 2B 78 */	mr r0, r5
/* 8028B9FC  48 00 00 08 */	b lbl_8028BA04
lbl_8028BA00:
/* 8028BA00  38 0D 8C 70 */	la r0, soOutput_none___Q27JStudio14TVariableValue(r13) /* 804511F0-_SDA_BASE_ */
lbl_8028BA04:
/* 8028BA04  90 04 00 10 */	stw r0, 0x10(r4)
/* 8028BA08  38 A5 00 20 */	addi r5, r5, 0x20
lbl_8028BA0C:
/* 8028BA0C  80 05 00 04 */	lwz r0, 4(r5)
/* 8028BA10  2C 00 FF FF */	cmpwi r0, -1
/* 8028BA14  40 82 FF D0 */	bne lbl_8028B9E4
/* 8028BA18  4E 80 00 20 */	blr 
