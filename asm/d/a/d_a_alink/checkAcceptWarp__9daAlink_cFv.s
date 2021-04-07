lbl_8011F658:
/* 8011F658  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8011F65C  7C 08 02 A6 */	mflr r0
/* 8011F660  90 01 00 34 */	stw r0, 0x34(r1)
/* 8011F664  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8011F668  7C 7F 1B 78 */	mr r31, r3
/* 8011F66C  3C 80 80 3A */	lis r4, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8011F670  38 04 37 C0 */	addi r0, r4, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8011F674  90 01 00 18 */	stw r0, 0x18(r1)
/* 8011F678  80 03 19 9C */	lwz r0, 0x199c(r3)
/* 8011F67C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8011F680  41 82 01 34 */	beq lbl_8011F7B4
/* 8011F684  80 BF 31 A0 */	lwz r5, 0x31a0(r31)
/* 8011F688  3C 80 00 07 */	lis r4, 0x0007 /* 0x00070C52@ha */
/* 8011F68C  38 04 0C 52 */	addi r0, r4, 0x0C52 /* 0x00070C52@l */
/* 8011F690  7C A0 00 39 */	and. r0, r5, r0
/* 8011F694  40 82 01 20 */	bne lbl_8011F7B4
/* 8011F698  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8011F69C  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 8011F6A0  40 82 01 14 */	bne lbl_8011F7B4
/* 8011F6A4  38 81 00 08 */	addi r4, r1, 8
/* 8011F6A8  4B F9 29 31 */	bl getSlidePolygon__9daAlink_cFP8cM3dGPla
/* 8011F6AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011F6B0  40 82 01 04 */	bne lbl_8011F7B4
/* 8011F6B4  4B FC 1D 55 */	bl checkForestOldCentury__9daAlink_cFv
/* 8011F6B8  2C 03 00 00 */	cmpwi r3, 0
/* 8011F6BC  40 82 00 F8 */	bne lbl_8011F7B4
/* 8011F6C0  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 8011F6C4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011F6C8  40 82 00 2C */	bne lbl_8011F6F4
/* 8011F6CC  80 8D 8A 98 */	lwz r4, m_midnaActor__9daPy_py_c(r13)
/* 8011F6D0  38 60 00 00 */	li r3, 0
/* 8011F6D4  80 84 08 90 */	lwz r4, 0x890(r4)
/* 8011F6D8  54 80 01 09 */	rlwinm. r0, r4, 0, 4, 4
/* 8011F6DC  41 82 00 10 */	beq lbl_8011F6EC
/* 8011F6E0  54 80 05 AD */	rlwinm. r0, r4, 0, 0x16, 0x16
/* 8011F6E4  41 82 00 08 */	beq lbl_8011F6EC
/* 8011F6E8  38 60 00 01 */	li r3, 1
lbl_8011F6EC:
/* 8011F6EC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011F6F0  41 82 00 C4 */	beq lbl_8011F7B4
lbl_8011F6F4:
/* 8011F6F4  4B FA 0B 91 */	bl checkField__9daAlink_cFv
/* 8011F6F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011F6FC  40 82 00 10 */	bne lbl_8011F70C
/* 8011F700  4B FA 0C 59 */	bl checkCastleTown__9daAlink_cFv
/* 8011F704  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011F708  41 82 00 AC */	beq lbl_8011F7B4
lbl_8011F70C:
/* 8011F70C  3C 60 80 39 */	lis r3, d_a_d_a_alink__stringBase0@ha /* 0x80392094@ha */
/* 8011F710  38 63 20 94 */	addi r3, r3, d_a_d_a_alink__stringBase0@l /* 0x80392094@l */
/* 8011F714  38 63 01 3C */	addi r3, r3, 0x13c
/* 8011F718  4B F7 E3 49 */	bl checkStageName__9daAlink_cFPCc
/* 8011F71C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8011F720  40 82 00 94 */	bne lbl_8011F7B4
/* 8011F724  80 1F 05 74 */	lwz r0, 0x574(r31)
/* 8011F728  54 04 01 8D */	rlwinm. r4, r0, 0, 6, 6
/* 8011F72C  41 82 00 24 */	beq lbl_8011F750
/* 8011F730  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8011F734  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 8011F738  40 82 00 68 */	bne lbl_8011F7A0
/* 8011F73C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011F740  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011F744  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8011F748  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8011F74C  40 82 00 54 */	bne lbl_8011F7A0
lbl_8011F750:
/* 8011F750  28 04 00 00 */	cmplwi r4, 0
/* 8011F754  40 82 00 60 */	bne lbl_8011F7B4
/* 8011F758  7F E3 FB 78 */	mr r3, r31
/* 8011F75C  4B FF 64 C5 */	bl checkEventRun__9daAlink_cCFv
/* 8011F760  2C 03 00 00 */	cmpwi r3, 0
/* 8011F764  40 82 00 1C */	bne lbl_8011F780
/* 8011F768  80 6D 8A 98 */	lwz r3, m_midnaActor__9daPy_py_c(r13)
/* 8011F76C  39 83 09 D4 */	addi r12, r3, 0x9d4
/* 8011F770  48 24 29 15 */	bl __ptmf_scall
/* 8011F774  60 00 00 00 */	nop 
/* 8011F778  2C 03 00 00 */	cmpwi r3, 0
/* 8011F77C  41 82 00 38 */	beq lbl_8011F7B4
lbl_8011F780:
/* 8011F780  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8011F784  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8011F788  40 82 00 18 */	bne lbl_8011F7A0
/* 8011F78C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8011F790  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8011F794  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 8011F798  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8011F79C  41 82 00 18 */	beq lbl_8011F7B4
lbl_8011F7A0:
/* 8011F7A0  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8011F7A4  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8011F7A8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8011F7AC  38 60 00 01 */	li r3, 1
/* 8011F7B0  48 00 00 14 */	b lbl_8011F7C4
lbl_8011F7B4:
/* 8011F7B4  3C 60 80 3A */	lis r3, __vt__8cM3dGPla@ha /* 0x803A37C0@ha */
/* 8011F7B8  38 03 37 C0 */	addi r0, r3, __vt__8cM3dGPla@l /* 0x803A37C0@l */
/* 8011F7BC  90 01 00 18 */	stw r0, 0x18(r1)
/* 8011F7C0  38 60 00 00 */	li r3, 0
lbl_8011F7C4:
/* 8011F7C4  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8011F7C8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8011F7CC  7C 08 03 A6 */	mtlr r0
/* 8011F7D0  38 21 00 30 */	addi r1, r1, 0x30
/* 8011F7D4  4E 80 00 20 */	blr 
