lbl_802CCFB8:
/* 802CCFB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CCFBC  7C 08 02 A6 */	mflr r0
/* 802CCFC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CCFC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CCFC8  7C 7F 1B 78 */	mr r31, r3
/* 802CCFCC  38 80 00 00 */	li r4, 0
/* 802CCFD0  4B FD DB C5 */	bl __ct__14Z2SoundStarterFb
/* 802CCFD4  3C 60 80 3D */	lis r3, __vt__15Z2SpeechStarter@ha /* 0x803CBF24@ha */
/* 802CCFD8  38 03 BF 24 */	addi r0, r3, __vt__15Z2SpeechStarter@l /* 0x803CBF24@l */
/* 802CCFDC  90 1F 00 00 */	stw r0, 0(r31)
/* 802CCFE0  7F E3 FB 78 */	mr r3, r31
/* 802CCFE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CCFE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CCFEC  7C 08 03 A6 */	mtlr r0
/* 802CCFF0  38 21 00 10 */	addi r1, r1, 0x10
/* 802CCFF4  4E 80 00 20 */	blr 
