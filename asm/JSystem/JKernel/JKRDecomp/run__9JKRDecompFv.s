lbl_802DB790:
/* 802DB790  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802DB794  7C 08 02 A6 */	mflr r0
/* 802DB798  90 01 00 24 */	stw r0, 0x24(r1)
/* 802DB79C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802DB7A0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802DB7A4  3C 60 80 3D */	lis r3, sMessageQueue__9JKRDecomp@ha
/* 802DB7A8  38 63 C4 80 */	addi r3, r3, sMessageQueue__9JKRDecomp@l
/* 802DB7AC  3C 80 80 3D */	lis r4, sMessageBuffer__9JKRDecomp@ha
/* 802DB7B0  38 84 C4 60 */	addi r4, r4, sMessageBuffer__9JKRDecomp@l
/* 802DB7B4  38 A0 00 08 */	li r5, 8
/* 802DB7B8  48 06 31 DD */	bl OSInitMessageQueue
/* 802DB7BC  3C 60 80 3D */	lis r3, sMessageQueue__9JKRDecomp@ha
/* 802DB7C0  3B E3 C4 80 */	addi r31, r3, sMessageQueue__9JKRDecomp@l
lbl_802DB7C4:
/* 802DB7C4  7F E3 FB 78 */	mr r3, r31
/* 802DB7C8  38 81 00 08 */	addi r4, r1, 8
/* 802DB7CC  38 A0 00 01 */	li r5, 1
/* 802DB7D0  48 06 32 ED */	bl OSReceiveMessage
/* 802DB7D4  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DB7D8  80 7E 00 04 */	lwz r3, 4(r30)
/* 802DB7DC  80 9E 00 08 */	lwz r4, 8(r30)
/* 802DB7E0  80 BE 00 0C */	lwz r5, 0xc(r30)
/* 802DB7E4  80 DE 00 10 */	lwz r6, 0x10(r30)
/* 802DB7E8  48 00 01 F5 */	bl decode__9JKRDecompFPUcPUcUlUl
/* 802DB7EC  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 802DB7F0  2C 00 00 00 */	cmpwi r0, 0
/* 802DB7F4  41 82 00 18 */	beq lbl_802DB80C
/* 802DB7F8  2C 00 00 01 */	cmpwi r0, 1
/* 802DB7FC  40 82 FF C8 */	bne lbl_802DB7C4
/* 802DB800  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 802DB804  4B FF 7D F1 */	bl sendCommand__12JKRAramPieceFP12JKRAMCommand
/* 802DB808  4B FF FF BC */	b lbl_802DB7C4
lbl_802DB80C:
/* 802DB80C  81 9E 00 14 */	lwz r12, 0x14(r30)
/* 802DB810  28 0C 00 00 */	cmplwi r12, 0
/* 802DB814  41 82 00 14 */	beq lbl_802DB828
/* 802DB818  7F C3 F3 78 */	mr r3, r30
/* 802DB81C  7D 89 03 A6 */	mtctr r12
/* 802DB820  4E 80 04 21 */	bctrl 
/* 802DB824  4B FF FF A0 */	b lbl_802DB7C4
lbl_802DB828:
/* 802DB828  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 802DB82C  28 03 00 00 */	cmplwi r3, 0
/* 802DB830  41 82 00 14 */	beq lbl_802DB844
/* 802DB834  38 80 00 01 */	li r4, 1
/* 802DB838  38 A0 00 00 */	li r5, 0
/* 802DB83C  48 06 31 B9 */	bl OSSendMessage
/* 802DB840  4B FF FF 84 */	b lbl_802DB7C4
lbl_802DB844:
/* 802DB844  38 7E 00 28 */	addi r3, r30, 0x28
/* 802DB848  38 80 00 01 */	li r4, 1
/* 802DB84C  38 A0 00 00 */	li r5, 0
/* 802DB850  48 06 31 A5 */	bl OSSendMessage
/* 802DB854  4B FF FF 70 */	b lbl_802DB7C4
