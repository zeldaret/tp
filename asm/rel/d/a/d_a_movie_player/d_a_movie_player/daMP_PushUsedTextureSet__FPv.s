lbl_80877180:
/* 80877180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80877184  7C 08 02 A6 */	mflr r0
/* 80877188  90 01 00 14 */	stw r0, 0x14(r1)
/* 8087718C  7C 64 1B 78 */	mr r4, r3
/* 80877190  3C 60 80 94 */	lis r3, daMP_UsedTextureSetQueue@ha /* 0x80944900@ha */
/* 80877194  38 63 49 00 */	addi r3, r3, daMP_UsedTextureSetQueue@l /* 0x80944900@l */
/* 80877198  38 A0 00 00 */	li r5, 0
/* 8087719C  4B AC 78 59 */	bl OSSendMessage
/* 808771A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808771A4  7C 08 03 A6 */	mtlr r0
/* 808771A8  38 21 00 10 */	addi r1, r1, 0x10
/* 808771AC  4E 80 00 20 */	blr 
