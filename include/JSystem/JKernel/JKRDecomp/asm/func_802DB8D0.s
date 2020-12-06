/* sendCommand__9JKRDecompFP16JKRDecompCommand __ct__9JKRDecompFl::sendCommand(JKRDecompCommand *) */
/* JKRDecomp_NS_sendCommand */
/* 802DB8D0 002D8810  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DB8D4 002D8814  7C 08 02 A6 */	mflr r0
/* 802DB8D8 002D8818  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DB8DC 002D881C  7C 64 1B 78 */	mr r4, r3
/* 802DB8E0 002D8820  3C 60 80 3D */	lis r3, lbl_803CC480@ha
/* 802DB8E4 002D8824  38 63 C4 80 */	addi r3, r3, lbl_803CC480@l
/* 802DB8E8 002D8828  38 A0 00 00 */	li r5, 0
/* 802DB8EC 002D882C  48 06 31 09 */	bl OSSendMessage
/* 802DB8F0 002D8830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DB8F4 002D8834  7C 08 03 A6 */	mtlr r0
/* 802DB8F8 002D8838  38 21 00 10 */	addi r1, r1, 0x10
/* 802DB8FC 002D883C  4E 80 00 20 */	blr
