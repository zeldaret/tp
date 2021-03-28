lbl_800B72E4:
/* 800B72E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B72E8  7C 08 02 A6 */	mflr r0
/* 800B72EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B72F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B72F4  7C 7F 1B 78 */	mr r31, r3
/* 800B72F8  80 03 28 28 */	lwz r0, 0x2828(r3)
/* 800B72FC  28 00 00 00 */	cmplwi r0, 0
/* 800B7300  41 82 00 0C */	beq lbl_800B730C
/* 800B7304  38 60 00 01 */	li r3, 1
/* 800B7308  48 00 00 74 */	b lbl_800B737C
lbl_800B730C:
/* 800B730C  38 7F 28 24 */	addi r3, r31, 0x2824
/* 800B7310  48 0A 79 ED */	bl clearData__16daPy_actorKeep_cFv
/* 800B7314  7F E3 FB 78 */	mr r3, r31
/* 800B7318  38 80 00 02 */	li r4, 2
/* 800B731C  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800B7320  4B FF 64 05 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800B7324  38 00 00 FF */	li r0, 0xff
/* 800B7328  B0 1F 2F DC */	sth r0, 0x2fdc(r31)
/* 800B732C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800B7330  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 800B7334  41 82 00 3C */	beq lbl_800B7370
/* 800B7338  7F E3 FB 78 */	mr r3, r31
/* 800B733C  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800B7340  81 8C 01 90 */	lwz r12, 0x190(r12)
/* 800B7344  7D 89 03 A6 */	mtctr r12
/* 800B7348  4E 80 04 21 */	bctrl 
/* 800B734C  28 03 00 00 */	cmplwi r3, 0
/* 800B7350  41 82 00 14 */	beq lbl_800B7364
/* 800B7354  7F E3 FB 78 */	mr r3, r31
/* 800B7358  38 80 00 00 */	li r4, 0
/* 800B735C  48 03 DE 89 */	bl procCanoeWaitInit__9daAlink_cFi
/* 800B7360  48 00 00 18 */	b lbl_800B7378
lbl_800B7364:
/* 800B7364  7F E3 FB 78 */	mr r3, r31
/* 800B7368  48 03 96 19 */	bl procHorseWaitInit__9daAlink_cFv
/* 800B736C  48 00 00 0C */	b lbl_800B7378
lbl_800B7370:
/* 800B7370  7F E3 FB 78 */	mr r3, r31
/* 800B7374  48 00 C0 45 */	bl procWaitInit__9daAlink_cFv
lbl_800B7378:
/* 800B7378  38 60 00 00 */	li r3, 0
lbl_800B737C:
/* 800B737C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800B7380  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800B7384  7C 08 03 A6 */	mtlr r0
/* 800B7388  38 21 00 10 */	addi r1, r1, 0x10
/* 800B738C  4E 80 00 20 */	blr 
