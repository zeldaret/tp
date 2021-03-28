lbl_800C82E8:
/* 800C82E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C82EC  7C 08 02 A6 */	mflr r0
/* 800C82F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C82F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C82F8  7C 7F 1B 78 */	mr r31, r3
/* 800C82FC  38 80 01 4E */	li r4, 0x14e
/* 800C8300  4B FF AA A5 */	bl commonProcInitNotSameProc__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C8304  2C 03 00 00 */	cmpwi r3, 0
/* 800C8308  40 82 00 0C */	bne lbl_800C8314
/* 800C830C  38 60 00 01 */	li r3, 1
/* 800C8310  48 00 00 7C */	b lbl_800C838C
lbl_800C8314:
/* 800C8314  7F E3 FB 78 */	mr r3, r31
/* 800C8318  38 80 00 00 */	li r4, 0
/* 800C831C  38 A0 00 01 */	li r5, 1
/* 800C8320  4B FF 8F BD */	bl deleteEquipItem__9daAlink_cFii
/* 800C8324  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 800C8328  54 03 01 8D */	rlwinm. r3, r0, 0, 6, 6
/* 800C832C  41 82 00 10 */	beq lbl_800C833C
/* 800C8330  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 800C8334  28 00 00 46 */	cmplwi r0, 0x46
/* 800C8338  41 82 00 18 */	beq lbl_800C8350
lbl_800C833C:
/* 800C833C  28 03 00 00 */	cmplwi r3, 0
/* 800C8340  40 82 00 20 */	bne lbl_800C8360
/* 800C8344  80 1F 06 14 */	lwz r0, 0x614(r31)
/* 800C8348  28 00 00 47 */	cmplwi r0, 0x47
/* 800C834C  40 82 00 14 */	bne lbl_800C8360
lbl_800C8350:
/* 800C8350  38 00 00 01 */	li r0, 1
/* 800C8354  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800C8358  B0 1F 30 0E */	sth r0, 0x300e(r31)
/* 800C835C  48 00 00 10 */	b lbl_800C836C
lbl_800C8360:
/* 800C8360  38 00 00 00 */	li r0, 0
/* 800C8364  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 800C8368  B0 1F 30 0E */	sth r0, 0x300e(r31)
lbl_800C836C:
/* 800C836C  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C8370  D0 3F 33 98 */	stfs f1, 0x3398(r31)
/* 800C8374  D0 3F 04 FC */	stfs f1, 0x4fc(r31)
/* 800C8378  7F E3 FB 78 */	mr r3, r31
/* 800C837C  C0 5F 05 34 */	lfs f2, 0x534(r31)
/* 800C8380  38 80 00 00 */	li r4, 0
/* 800C8384  4B FF 33 ED */	bl setSpecialGravity__9daAlink_cFffi
/* 800C8388  38 60 00 01 */	li r3, 1
lbl_800C838C:
/* 800C838C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C8390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C8394  7C 08 03 A6 */	mtlr r0
/* 800C8398  38 21 00 10 */	addi r1, r1, 0x10
/* 800C839C  4E 80 00 20 */	blr 
