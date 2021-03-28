lbl_802D2C40:
/* 802D2C40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D2C44  7C 08 02 A6 */	mflr r0
/* 802D2C48  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D2C4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D2C50  93 C1 00 08 */	stw r30, 8(r1)
/* 802D2C54  80 6D 8E 50 */	lwz r3, szpEnd(r13)
/* 802D2C58  38 03 FF E7 */	addi r0, r3, -25
/* 802D2C5C  90 0D 8E 68 */	stw r0, srcLimit(r13)
/* 802D2C60  80 0D 8E 4C */	lwz r0, szpBuf(r13)
/* 802D2C64  7C 1E 03 78 */	mr r30, r0
/* 802D2C68  7C 60 18 50 */	subf r3, r0, r3
/* 802D2C6C  80 0D 8E 64 */	lwz r0, transLeft(r13)
/* 802D2C70  7C 00 18 40 */	cmplw r0, r3
/* 802D2C74  7C 7F 1B 78 */	mr r31, r3
/* 802D2C78  40 80 00 08 */	bge lbl_802D2C80
/* 802D2C7C  7C 1F 03 78 */	mr r31, r0
lbl_802D2C80:
/* 802D2C80  38 60 00 01 */	li r3, 1
/* 802D2C84  80 8D 8E 6C */	lwz r4, srcAddress(r13)
/* 802D2C88  80 0D 8E 60 */	lwz r0, srcOffset(r13)
/* 802D2C8C  7C 84 02 14 */	add r4, r4, r0
/* 802D2C90  7F C5 F3 78 */	mr r5, r30
/* 802D2C94  38 1F 00 1F */	addi r0, r31, 0x1f
/* 802D2C98  54 06 00 34 */	rlwinm r6, r0, 0, 0, 0x1a
/* 802D2C9C  38 E0 00 00 */	li r7, 0
/* 802D2CA0  48 00 0B 99 */	bl orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
/* 802D2CA4  80 0D 8E 60 */	lwz r0, srcOffset(r13)
/* 802D2CA8  7C 00 FA 14 */	add r0, r0, r31
/* 802D2CAC  90 0D 8E 60 */	stw r0, srcOffset(r13)
/* 802D2CB0  80 0D 8E 64 */	lwz r0, transLeft(r13)
/* 802D2CB4  7C 1F 00 51 */	subf. r0, r31, r0
/* 802D2CB8  90 0D 8E 64 */	stw r0, transLeft(r13)
/* 802D2CBC  40 82 00 0C */	bne lbl_802D2CC8
/* 802D2CC0  7C 1E FA 14 */	add r0, r30, r31
/* 802D2CC4  90 0D 8E 68 */	stw r0, srcLimit(r13)
lbl_802D2CC8:
/* 802D2CC8  7F C3 F3 78 */	mr r3, r30
/* 802D2CCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D2CD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D2CD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D2CD8  7C 08 03 A6 */	mtlr r0
/* 802D2CDC  38 21 00 10 */	addi r1, r1, 0x10
/* 802D2CE0  4E 80 00 20 */	blr 
