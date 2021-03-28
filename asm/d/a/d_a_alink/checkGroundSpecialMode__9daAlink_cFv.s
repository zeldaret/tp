lbl_800B9F50:
/* 800B9F50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800B9F54  7C 08 02 A6 */	mflr r0
/* 800B9F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 800B9F5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800B9F60  7C 7F 1B 78 */	mr r31, r3
/* 800B9F64  80 03 19 9C */	lwz r0, 0x199c(r3)
/* 800B9F68  54 06 06 B5 */	rlwinm. r6, r0, 0, 0x1a, 0x1a
/* 800B9F6C  41 82 00 38 */	beq lbl_800B9FA4
/* 800B9F70  80 BF 31 A0 */	lwz r5, 0x31a0(r31)
/* 800B9F74  3C 80 00 07 */	lis r4, 0x0007 /* 0x00070C52@ha */
/* 800B9F78  38 04 0C 52 */	addi r0, r4, 0x0C52 /* 0x00070C52@l */
/* 800B9F7C  7C A0 00 39 */	and. r0, r5, r0
/* 800B9F80  40 82 00 24 */	bne lbl_800B9FA4
/* 800B9F84  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800B9F88  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 800B9F8C  40 82 00 18 */	bne lbl_800B9FA4
/* 800B9F90  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800B9F94  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 800B9F98  41 82 00 0C */	beq lbl_800B9FA4
/* 800B9F9C  48 00 D8 59 */	bl procCoMetamorphoseInit__9daAlink_cFv
/* 800B9FA0  48 00 00 E8 */	b lbl_800BA088
lbl_800B9FA4:
/* 800B9FA4  28 06 00 00 */	cmplwi r6, 0
/* 800B9FA8  41 82 00 38 */	beq lbl_800B9FE0
/* 800B9FAC  80 9F 31 A0 */	lwz r4, 0x31a0(r31)
/* 800B9FB0  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070C52@ha */
/* 800B9FB4  38 03 0C 52 */	addi r0, r3, 0x0C52 /* 0x00070C52@l */
/* 800B9FB8  7C 80 00 39 */	and. r0, r4, r0
/* 800B9FBC  40 82 00 24 */	bne lbl_800B9FE0
/* 800B9FC0  7F E3 FB 78 */	mr r3, r31
/* 800B9FC4  48 04 BB 4D */	bl checkBoardRestart__9daAlink_cFv
/* 800B9FC8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800B9FCC  41 82 00 14 */	beq lbl_800B9FE0
/* 800B9FD0  7F E3 FB 78 */	mr r3, r31
/* 800B9FD4  80 9F 28 18 */	lwz r4, 0x2818(r31)
/* 800B9FD8  48 04 CA 61 */	bl procBoardWaitInit__9daAlink_cFP10fopAc_ac_c
/* 800B9FDC  48 00 00 AC */	b lbl_800BA088
lbl_800B9FE0:
/* 800B9FE0  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 800B9FE4  28 00 00 2A */	cmplwi r0, 0x2a
/* 800B9FE8  40 82 00 10 */	bne lbl_800B9FF8
/* 800B9FEC  7F E3 FB 78 */	mr r3, r31
/* 800B9FF0  48 02 F3 55 */	bl procGoatMoveInit__9daAlink_cFv
/* 800B9FF4  48 00 00 94 */	b lbl_800BA088
lbl_800B9FF8:
/* 800B9FF8  28 00 00 01 */	cmplwi r0, 1
/* 800B9FFC  40 82 00 10 */	bne lbl_800BA00C
/* 800BA000  7F E3 FB 78 */	mr r3, r31
/* 800BA004  48 03 09 4D */	bl procSumouReadyInit__9daAlink_cFv
/* 800BA008  48 00 00 80 */	b lbl_800BA088
lbl_800BA00C:
/* 800BA00C  28 00 00 2B */	cmplwi r0, 0x2b
/* 800BA010  40 82 00 10 */	bne lbl_800BA020
/* 800BA014  7F E3 FB 78 */	mr r3, r31
/* 800BA018  48 03 03 DD */	bl procGoronMoveInit__9daAlink_cFv
/* 800BA01C  48 00 00 6C */	b lbl_800BA088
lbl_800BA020:
/* 800BA020  28 00 00 2D */	cmplwi r0, 0x2d
/* 800BA024  40 82 00 14 */	bne lbl_800BA038
/* 800BA028  7F E3 FB 78 */	mr r3, r31
/* 800BA02C  38 80 00 00 */	li r4, 0
/* 800BA030  48 03 AC 49 */	bl procCanoeJumpRideInit__9daAlink_cFP10fopAc_ac_c
/* 800BA034  48 00 00 54 */	b lbl_800BA088
lbl_800BA038:
/* 800BA038  7F E3 FB 78 */	mr r3, r31
/* 800BA03C  4B FF BF 31 */	bl checkSlideAction__9daAlink_cFv
/* 800BA040  2C 03 00 00 */	cmpwi r3, 0
/* 800BA044  41 82 00 0C */	beq lbl_800BA050
/* 800BA048  38 60 00 01 */	li r3, 1
/* 800BA04C  48 00 00 3C */	b lbl_800BA088
lbl_800BA050:
/* 800BA050  7F E3 FB 78 */	mr r3, r31
/* 800BA054  4B FE 82 2D */	bl checkGoronRide__9daAlink_cFv
/* 800BA058  7C 64 1B 79 */	or. r4, r3, r3
/* 800BA05C  41 82 00 10 */	beq lbl_800BA06C
/* 800BA060  7F E3 FB 78 */	mr r3, r31
/* 800BA064  48 00 E4 E9 */	bl procGoronRideWaitInit__9daAlink_cFP10fopAc_ac_c
/* 800BA068  48 00 00 20 */	b lbl_800BA088
lbl_800BA06C:
/* 800BA06C  80 1F 05 8C */	lwz r0, 0x58c(r31)
/* 800BA070  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 800BA074  41 82 00 10 */	beq lbl_800BA084
/* 800BA078  7F E3 FB 78 */	mr r3, r31
/* 800BA07C  48 02 1C A1 */	bl procScreamWaitInit__9daAlink_cFv
/* 800BA080  48 00 00 08 */	b lbl_800BA088
lbl_800BA084:
/* 800BA084  38 60 00 00 */	li r3, 0
lbl_800BA088:
/* 800BA088  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800BA08C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800BA090  7C 08 03 A6 */	mtlr r0
/* 800BA094  38 21 00 10 */	addi r1, r1, 0x10
/* 800BA098  4E 80 00 20 */	blr 
