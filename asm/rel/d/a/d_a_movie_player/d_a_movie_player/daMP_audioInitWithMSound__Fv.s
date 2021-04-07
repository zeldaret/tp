lbl_8087712C:
/* 8087712C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80877130  7C 08 02 A6 */	mflr r0
/* 80877134  90 01 00 14 */	stw r0, 0x14(r1)
/* 80877138  3C 60 80 87 */	lis r3, daMP_audioCallbackWithMSound__Fl@ha /* 0x80877074@ha */
/* 8087713C  38 63 70 74 */	addi r3, r3, daMP_audioCallbackWithMSound__Fl@l /* 0x80877074@l */
/* 80877140  38 80 00 03 */	li r4, 3
/* 80877144  4B A2 58 99 */	bl registerMixCallback__9JASDriverFPFl_Ps10JASMixMode
/* 80877148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8087714C  7C 08 03 A6 */	mtlr r0
/* 80877150  38 21 00 10 */	addi r1, r1, 0x10
/* 80877154  4E 80 00 20 */	blr 
