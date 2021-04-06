lbl_80978ED0:
/* 80978ED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80978ED4  7C 08 02 A6 */	mflr r0
/* 80978ED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80978EDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80978EE0  93 C1 00 08 */	stw r30, 8(r1)
/* 80978EE4  7C 7F 1B 78 */	mr r31, r3
/* 80978EE8  38 80 00 00 */	li r4, 0
/* 80978EEC  80 03 0B 78 */	lwz r0, 0xb78(r3)
/* 80978EF0  54 00 10 3A */	slwi r0, r0, 2
/* 80978EF4  3C A0 80 98 */	lis r5, m_funcTbl__11daNpcCdn3_c@ha /* 0x8097F848@ha */
/* 80978EF8  38 A5 F8 48 */	addi r5, r5, m_funcTbl__11daNpcCdn3_c@l /* 0x8097F848@l */
/* 80978EFC  7C A5 00 2E */	lwzx r5, r5, r0
/* 80978F00  88 03 0B 97 */	lbz r0, 0xb97(r3)
/* 80978F04  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80978F08  7D 85 02 14 */	add r12, r5, r0
/* 80978F0C  4B 9E 91 79 */	bl __ptmf_scall
/* 80978F10  60 00 00 00 */	nop 
/* 80978F14  2C 03 00 00 */	cmpwi r3, 0
/* 80978F18  41 82 00 FC */	beq lbl_80979014
/* 80978F1C  80 1F 0B 78 */	lwz r0, 0xb78(r31)
/* 80978F20  54 00 10 3A */	slwi r0, r0, 2
/* 80978F24  3C 60 80 98 */	lis r3, m_funcTbl__11daNpcCdn3_c@ha /* 0x8097F848@ha */
/* 80978F28  38 63 F8 48 */	addi r3, r3, m_funcTbl__11daNpcCdn3_c@l /* 0x8097F848@l */
/* 80978F2C  7C 83 00 2E */	lwzx r4, r3, r0
/* 80978F30  88 7F 0B 97 */	lbz r3, 0xb97(r31)
/* 80978F34  38 03 00 01 */	addi r0, r3, 1
/* 80978F38  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80978F3C  7C 64 02 14 */	add r3, r4, r0
/* 80978F40  4B 9E 90 D9 */	bl __ptmf_test
/* 80978F44  2C 03 00 00 */	cmpwi r3, 0
/* 80978F48  40 82 00 0C */	bne lbl_80978F54
/* 80978F4C  38 00 00 00 */	li r0, 0
/* 80978F50  48 00 00 0C */	b lbl_80978F5C
lbl_80978F54:
/* 80978F54  88 7F 0B 97 */	lbz r3, 0xb97(r31)
/* 80978F58  38 03 00 01 */	addi r0, r3, 1
lbl_80978F5C:
/* 80978F5C  98 1F 0B 97 */	stb r0, 0xb97(r31)
/* 80978F60  38 00 00 01 */	li r0, 1
/* 80978F64  98 1F 0B 94 */	stb r0, 0xb94(r31)
/* 80978F68  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80978F6C  83 C3 00 08 */	lwz r30, 8(r3)
/* 80978F70  7F E3 FB 78 */	mr r3, r31
/* 80978F74  38 80 00 08 */	li r4, 8
/* 80978F78  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 80978F7C  4B 7D F1 75 */	bl getAnmP__10daNpcCd2_cFii
/* 80978F80  7C 1E 18 40 */	cmplw r30, r3
/* 80978F84  40 82 00 14 */	bne lbl_80978F98
/* 80978F88  38 7F 05 94 */	addi r3, r31, 0x594
/* 80978F8C  38 80 00 03 */	li r4, 3
/* 80978F90  4B 94 7E 89 */	bl playVoice__17Z2CreatureCitizenFi
/* 80978F94  48 00 00 80 */	b lbl_80979014
lbl_80978F98:
/* 80978F98  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80978F9C  83 C3 00 08 */	lwz r30, 8(r3)
/* 80978FA0  7F E3 FB 78 */	mr r3, r31
/* 80978FA4  38 80 00 31 */	li r4, 0x31
/* 80978FA8  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 80978FAC  4B 7D F1 45 */	bl getAnmP__10daNpcCd2_cFii
/* 80978FB0  7C 1E 18 40 */	cmplw r30, r3
/* 80978FB4  40 82 00 14 */	bne lbl_80978FC8
/* 80978FB8  38 7F 05 94 */	addi r3, r31, 0x594
/* 80978FBC  38 80 00 04 */	li r4, 4
/* 80978FC0  4B 94 7E 59 */	bl playVoice__17Z2CreatureCitizenFi
/* 80978FC4  48 00 00 50 */	b lbl_80979014
lbl_80978FC8:
/* 80978FC8  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80978FCC  83 C3 00 08 */	lwz r30, 8(r3)
/* 80978FD0  7F E3 FB 78 */	mr r3, r31
/* 80978FD4  38 80 00 14 */	li r4, 0x14
/* 80978FD8  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 80978FDC  4B 7D F1 15 */	bl getAnmP__10daNpcCd2_cFii
/* 80978FE0  7C 1E 18 40 */	cmplw r30, r3
/* 80978FE4  41 82 00 24 */	beq lbl_80979008
/* 80978FE8  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80978FEC  83 C3 00 08 */	lwz r30, 8(r3)
/* 80978FF0  7F E3 FB 78 */	mr r3, r31
/* 80978FF4  38 80 00 15 */	li r4, 0x15
/* 80978FF8  80 BF 0B 58 */	lwz r5, 0xb58(r31)
/* 80978FFC  4B 7D F0 F5 */	bl getAnmP__10daNpcCd2_cFii
/* 80979000  7C 1E 18 40 */	cmplw r30, r3
/* 80979004  40 82 00 10 */	bne lbl_80979014
lbl_80979008:
/* 80979008  38 7F 05 94 */	addi r3, r31, 0x594
/* 8097900C  38 80 00 05 */	li r4, 5
/* 80979010  4B 94 7E 09 */	bl playVoice__17Z2CreatureCitizenFi
lbl_80979014:
/* 80979014  7F E3 FB 78 */	mr r3, r31
/* 80979018  48 00 22 71 */	bl checkSchedule__11daNpcCdn3_cFv
/* 8097901C  7F E3 FB 78 */	mr r3, r31
/* 80979020  4B 7E 07 F9 */	bl checkFearSituation__10daNpcCd2_cFv
/* 80979024  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80979028  41 82 00 40 */	beq lbl_80979068
/* 8097902C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80979030  2C 00 00 02 */	cmpwi r0, 2
/* 80979034  40 82 00 28 */	bne lbl_8097905C
/* 80979038  80 1F 0A 98 */	lwz r0, 0xa98(r31)
/* 8097903C  2C 00 00 00 */	cmpwi r0, 0
/* 80979040  41 82 00 0C */	beq lbl_8097904C
/* 80979044  2C 00 00 01 */	cmpwi r0, 1
/* 80979048  40 82 00 14 */	bne lbl_8097905C
lbl_8097904C:
/* 8097904C  7F E3 FB 78 */	mr r3, r31
/* 80979050  38 80 00 06 */	li r4, 6
/* 80979054  4B FF FD 81 */	bl setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e
/* 80979058  48 00 00 10 */	b lbl_80979068
lbl_8097905C:
/* 8097905C  7F E3 FB 78 */	mr r3, r31
/* 80979060  38 80 00 04 */	li r4, 4
/* 80979064  4B FF FD 71 */	bl setAction__11daNpcCdn3_cFQ211daNpcCdn3_c6Mode_e
lbl_80979068:
/* 80979068  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8097906C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80979070  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80979074  7C 08 03 A6 */	mtlr r0
/* 80979078  38 21 00 10 */	addi r1, r1, 0x10
/* 8097907C  4E 80 00 20 */	blr 
