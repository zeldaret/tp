lbl_800C4F14:
/* 800C4F14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800C4F18  7C 08 02 A6 */	mflr r0
/* 800C4F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800C4F20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800C4F24  7C 7F 1B 78 */	mr r31, r3
/* 800C4F28  38 80 00 0F */	li r4, 0xf
/* 800C4F2C  4B FF D0 41 */	bl commonProcInit__9daAlink_cFQ29daAlink_c12daAlink_PROC
/* 800C4F30  7F E3 FB 78 */	mr r3, r31
/* 800C4F34  38 80 00 24 */	li r4, 0x24
/* 800C4F38  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C4F3C  3C A0 80 39 */	lis r5, m__23daAlinkHIO_frontRoll_c0@ha /* 0x8038D7BC@ha */
/* 800C4F40  38 C5 D7 BC */	addi r6, r5, m__23daAlinkHIO_frontRoll_c0@l /* 0x8038D7BC@l */
/* 800C4F44  C0 46 00 1C */	lfs f2, 0x1c(r6)
/* 800C4F48  A8 A6 00 14 */	lha r5, 0x14(r6)
/* 800C4F4C  C0 66 00 20 */	lfs f3, 0x20(r6)
/* 800C4F50  4B FE 80 BD */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800C4F54  3C 60 80 39 */	lis r3, m__23daAlinkHIO_frontRoll_c0@ha /* 0x8038D7BC@ha */
/* 800C4F58  38 63 D7 BC */	addi r3, r3, m__23daAlinkHIO_frontRoll_c0@l /* 0x8038D7BC@l */
/* 800C4F5C  C0 03 00 5C */	lfs f0, 0x5c(r3)
/* 800C4F60  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800C4F64  C0 03 00 60 */	lfs f0, 0x60(r3)
/* 800C4F68  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 800C4F6C  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800C4F70  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 800C4F74  41 82 00 2C */	beq lbl_800C4FA0
/* 800C4F78  C0 3F 33 98 */	lfs f1, 0x3398(r31)
/* 800C4F7C  3C 60 80 39 */	lis r3, m__24daAlinkHIO_magneBoots_c0@ha /* 0x8038E7F4@ha */
/* 800C4F80  38 63 E7 F4 */	addi r3, r3, m__24daAlinkHIO_magneBoots_c0@l /* 0x8038E7F4@l */
/* 800C4F84  C0 03 00 3C */	lfs f0, 0x3c(r3)
/* 800C4F88  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C4F8C  D0 1F 33 98 */	stfs f0, 0x3398(r31)
/* 800C4F90  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 800C4F94  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 800C4F98  EC 01 00 32 */	fmuls f0, f1, f0
/* 800C4F9C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_800C4FA0:
/* 800C4FA0  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 800C4FA4  3C 63 00 01 */	addis r3, r3, 1
/* 800C4FA8  38 03 80 00 */	addi r0, r3, -32768
/* 800C4FAC  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 800C4FB0  7F E3 FB 78 */	mr r3, r31
/* 800C4FB4  88 9F 2F A4 */	lbz r4, 0x2fa4(r31)
/* 800C4FB8  4B FF CD 35 */	bl setFrontRollCrashShock__9daAlink_cFUc
/* 800C4FBC  7F E3 FB 78 */	mr r3, r31
/* 800C4FC0  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010008@ha */
/* 800C4FC4  38 84 00 08 */	addi r4, r4, 0x0008 /* 0x00010008@l */
/* 800C4FC8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 800C4FCC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 800C4FD0  7D 89 03 A6 */	mtctr r12
/* 800C4FD4  4E 80 04 21 */	bctrl 
/* 800C4FD8  80 1F 05 80 */	lwz r0, 0x580(r31)
/* 800C4FDC  60 00 20 00 */	ori r0, r0, 0x2000
/* 800C4FE0  90 1F 05 80 */	stw r0, 0x580(r31)
/* 800C4FE4  38 60 00 01 */	li r3, 1
/* 800C4FE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800C4FEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800C4FF0  7C 08 03 A6 */	mtlr r0
/* 800C4FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 800C4FF8  4E 80 00 20 */	blr 
