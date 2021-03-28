lbl_80287BD8:
/* 80287BD8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80287BDC  7C 08 02 A6 */	mflr r0
/* 80287BE0  90 01 00 34 */	stw r0, 0x34(r1)
/* 80287BE4  39 61 00 30 */	addi r11, r1, 0x30
/* 80287BE8  48 0D A5 F5 */	bl _savegpr_29
/* 80287BEC  7C A8 2B 78 */	mr r8, r5
/* 80287BF0  7C C9 33 78 */	mr r9, r6
/* 80287BF4  3C A0 80 43 */	lis r5, lit_744@ha
/* 80287BF8  38 C5 10 10 */	addi r6, r5, lit_744@l
/* 80287BFC  3C A0 80 3C */	lis r5, lit_742@ha
/* 80287C00  38 A5 4B 00 */	addi r5, r5, lit_742@l
/* 80287C04  83 E3 00 34 */	lwz r31, 0x34(r3)
/* 80287C08  28 1F 00 00 */	cmplwi r31, 0
/* 80287C0C  41 82 02 E0 */	beq lbl_80287EEC
/* 80287C10  80 03 00 14 */	lwz r0, 0x14(r3)
/* 80287C14  54 8B D9 7E */	srwi r11, r4, 5
/* 80287C18  54 87 06 FE */	clrlwi r7, r4, 0x1b
/* 80287C1C  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80287C20  39 43 21 80 */	addi r10, r3, __ptmf_null@l
/* 80287C24  80 8A 00 00 */	lwz r4, 0(r10)
/* 80287C28  80 6A 00 04 */	lwz r3, 4(r10)
/* 80287C2C  90 81 00 08 */	stw r4, 8(r1)
/* 80287C30  90 61 00 0C */	stw r3, 0xc(r1)
/* 80287C34  80 6A 00 08 */	lwz r3, 8(r10)
/* 80287C38  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287C3C  38 8B FF EB */	addi r4, r11, -21
/* 80287C40  28 04 00 42 */	cmplwi r4, 0x42
/* 80287C44  41 81 02 A8 */	bgt lbl_80287EEC
/* 80287C48  3C 60 80 3C */	lis r3, lit_1831@ha
/* 80287C4C  38 63 52 30 */	addi r3, r3, lit_1831@l
/* 80287C50  54 84 10 3A */	slwi r4, r4, 2
/* 80287C54  7C 63 20 2E */	lwzx r3, r3, r4
/* 80287C58  7C 69 03 A6 */	mtctr r3
/* 80287C5C  4E 80 04 20 */	bctr 
/* 80287C60  80 65 06 A0 */	lwz r3, 0x6a0(r5)
/* 80287C64  80 05 06 A4 */	lwz r0, 0x6a4(r5)
/* 80287C68  90 61 00 08 */	stw r3, 8(r1)
/* 80287C6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287C70  80 05 06 A8 */	lwz r0, 0x6a8(r5)
/* 80287C74  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287C78  48 00 02 58 */	b lbl_80287ED0
/* 80287C7C  80 65 06 AC */	lwz r3, 0x6ac(r5)
/* 80287C80  80 05 06 B0 */	lwz r0, 0x6b0(r5)
/* 80287C84  90 61 00 08 */	stw r3, 8(r1)
/* 80287C88  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287C8C  80 05 06 B4 */	lwz r0, 0x6b4(r5)
/* 80287C90  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287C94  48 00 02 3C */	b lbl_80287ED0
/* 80287C98  80 65 06 B8 */	lwz r3, 0x6b8(r5)
/* 80287C9C  80 05 06 BC */	lwz r0, 0x6bc(r5)
/* 80287CA0  90 61 00 08 */	stw r3, 8(r1)
/* 80287CA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287CA8  80 05 06 C0 */	lwz r0, 0x6c0(r5)
/* 80287CAC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287CB0  48 00 02 20 */	b lbl_80287ED0
/* 80287CB4  80 65 06 C4 */	lwz r3, 0x6c4(r5)
/* 80287CB8  80 05 06 C8 */	lwz r0, 0x6c8(r5)
/* 80287CBC  90 61 00 08 */	stw r3, 8(r1)
/* 80287CC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287CC4  80 05 06 CC */	lwz r0, 0x6cc(r5)
/* 80287CC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287CCC  48 00 02 04 */	b lbl_80287ED0
/* 80287CD0  80 65 06 D0 */	lwz r3, 0x6d0(r5)
/* 80287CD4  80 05 06 D4 */	lwz r0, 0x6d4(r5)
/* 80287CD8  90 61 00 08 */	stw r3, 8(r1)
/* 80287CDC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287CE0  80 05 06 D8 */	lwz r0, 0x6d8(r5)
/* 80287CE4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287CE8  48 00 01 E8 */	b lbl_80287ED0
/* 80287CEC  80 65 06 DC */	lwz r3, 0x6dc(r5)
/* 80287CF0  80 05 06 E0 */	lwz r0, 0x6e0(r5)
/* 80287CF4  90 61 00 08 */	stw r3, 8(r1)
/* 80287CF8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287CFC  80 05 06 E4 */	lwz r0, 0x6e4(r5)
/* 80287D00  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287D04  48 00 01 CC */	b lbl_80287ED0
/* 80287D08  80 65 06 E8 */	lwz r3, 0x6e8(r5)
/* 80287D0C  80 05 06 EC */	lwz r0, 0x6ec(r5)
/* 80287D10  90 61 00 08 */	stw r3, 8(r1)
/* 80287D14  90 01 00 0C */	stw r0, 0xc(r1)
/* 80287D18  80 05 06 F0 */	lwz r0, 0x6f0(r5)
/* 80287D1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80287D20  48 00 01 B0 */	b lbl_80287ED0
/* 80287D24  80 85 06 F4 */	lwz r4, 0x6f4(r5)
/* 80287D28  80 65 06 F8 */	lwz r3, 0x6f8(r5)
/* 80287D2C  90 81 00 08 */	stw r4, 8(r1)
/* 80287D30  90 61 00 0C */	stw r3, 0xc(r1)
/* 80287D34  80 65 06 FC */	lwz r3, 0x6fc(r5)
/* 80287D38  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287D3C  3B C0 00 03 */	li r30, 3
/* 80287D40  3B A6 00 EC */	addi r29, r6, 0xec
/* 80287D44  48 00 00 E4 */	b lbl_80287E28
/* 80287D48  80 85 07 00 */	lwz r4, 0x700(r5)
/* 80287D4C  80 65 07 04 */	lwz r3, 0x704(r5)
/* 80287D50  90 81 00 08 */	stw r4, 8(r1)
/* 80287D54  90 61 00 0C */	stw r3, 0xc(r1)
/* 80287D58  80 65 07 08 */	lwz r3, 0x708(r5)
/* 80287D5C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287D60  3B C0 00 04 */	li r30, 4
/* 80287D64  3B A6 01 08 */	addi r29, r6, 0x108
/* 80287D68  48 00 00 C0 */	b lbl_80287E28
/* 80287D6C  80 85 07 0C */	lwz r4, 0x70c(r5)
/* 80287D70  80 65 07 10 */	lwz r3, 0x710(r5)
/* 80287D74  90 81 00 08 */	stw r4, 8(r1)
/* 80287D78  90 61 00 0C */	stw r3, 0xc(r1)
/* 80287D7C  80 65 07 14 */	lwz r3, 0x714(r5)
/* 80287D80  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287D84  3B C0 00 05 */	li r30, 5
/* 80287D88  3B A6 01 24 */	addi r29, r6, 0x124
/* 80287D8C  48 00 00 9C */	b lbl_80287E28
/* 80287D90  80 85 07 18 */	lwz r4, 0x718(r5)
/* 80287D94  80 65 07 1C */	lwz r3, 0x71c(r5)
/* 80287D98  90 81 00 08 */	stw r4, 8(r1)
/* 80287D9C  90 61 00 0C */	stw r3, 0xc(r1)
/* 80287DA0  80 65 07 20 */	lwz r3, 0x720(r5)
/* 80287DA4  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287DA8  3B C0 00 06 */	li r30, 6
/* 80287DAC  3B A6 01 40 */	addi r29, r6, 0x140
/* 80287DB0  48 00 00 78 */	b lbl_80287E28
/* 80287DB4  80 85 07 24 */	lwz r4, 0x724(r5)
/* 80287DB8  80 65 07 28 */	lwz r3, 0x728(r5)
/* 80287DBC  90 81 00 08 */	stw r4, 8(r1)
/* 80287DC0  90 61 00 0C */	stw r3, 0xc(r1)
/* 80287DC4  80 65 07 2C */	lwz r3, 0x72c(r5)
/* 80287DC8  90 61 00 10 */	stw r3, 0x10(r1)
/* 80287DCC  3B C0 00 0C */	li r30, 0xc
/* 80287DD0  3B A6 01 5C */	addi r29, r6, 0x15c
/* 80287DD4  48 00 00 54 */	b lbl_80287E28
/* 80287DD8  38 A0 00 00 */	li r5, 0
/* 80287DDC  48 00 00 C4 */	b lbl_80287EA0
/* 80287DE0  38 A0 00 01 */	li r5, 1
/* 80287DE4  48 00 00 BC */	b lbl_80287EA0
/* 80287DE8  38 A0 00 02 */	li r5, 2
/* 80287DEC  48 00 00 B4 */	b lbl_80287EA0
/* 80287DF0  38 A0 00 07 */	li r5, 7
/* 80287DF4  48 00 00 AC */	b lbl_80287EA0
/* 80287DF8  38 A0 00 08 */	li r5, 8
/* 80287DFC  48 00 00 A4 */	b lbl_80287EA0
/* 80287E00  38 A0 00 09 */	li r5, 9
/* 80287E04  48 00 00 9C */	b lbl_80287EA0
/* 80287E08  38 A0 00 0A */	li r5, 0xa
/* 80287E0C  48 00 00 94 */	b lbl_80287EA0
/* 80287E10  38 A0 00 0B */	li r5, 0xb
/* 80287E14  48 00 00 8C */	b lbl_80287EA0
/* 80287E18  3C 60 80 3A */	lis r3, sauVariableValue_3_POSITION_XYZ__Q27JStudio14TAdaptor_sound@ha
/* 80287E1C  38 A3 AB 6C */	addi r5, r3, sauVariableValue_3_POSITION_XYZ__Q27JStudio14TAdaptor_sound@l
/* 80287E20  48 00 00 9C */	b lbl_80287EBC
/* 80287E24  48 00 00 C8 */	b lbl_80287EEC
lbl_80287E28:
/* 80287E28  2C 07 00 13 */	cmpwi r7, 0x13
/* 80287E2C  40 80 00 54 */	bge lbl_80287E80
/* 80287E30  2C 07 00 10 */	cmpwi r7, 0x10
/* 80287E34  40 80 00 08 */	bge lbl_80287E3C
/* 80287E38  48 00 00 48 */	b lbl_80287E80
lbl_80287E3C:
/* 80287E3C  7F E3 FB 78 */	mr r3, r31
/* 80287E40  7C 04 03 78 */	mr r4, r0
/* 80287E44  7F C5 F3 78 */	mr r5, r30
/* 80287E48  7C E6 3B 78 */	mr r6, r7
/* 80287E4C  7D 07 43 78 */	mr r7, r8
/* 80287E50  7D 28 4B 78 */	mr r8, r9
/* 80287E54  4B FF E1 D9 */	bl adaptor_setVariableValue__Q27JStudio8TAdaptorFPQ27JStudio8TControlUlQ37JStudio4data15TEOperationDataPCvUl
/* 80287E58  80 7F 00 08 */	lwz r3, 8(r31)
/* 80287E5C  1C 1E 00 14 */	mulli r0, r30, 0x14
/* 80287E60  7C 63 02 14 */	add r3, r3, r0
/* 80287E64  28 1D 00 00 */	cmplwi r29, 0
/* 80287E68  41 82 00 0C */	beq lbl_80287E74
/* 80287E6C  7F A0 EB 78 */	mr r0, r29
/* 80287E70  48 00 00 08 */	b lbl_80287E78
lbl_80287E74:
/* 80287E74  38 0D 8C 70 */	la r0, soOutput_none___Q27JStudio14TVariableValue(r13) /* 804511F0-_SDA_BASE_ */
lbl_80287E78:
/* 80287E78  90 03 00 10 */	stw r0, 0x10(r3)
/* 80287E7C  48 00 00 70 */	b lbl_80287EEC
lbl_80287E80:
/* 80287E80  7F E3 FB 78 */	mr r3, r31
/* 80287E84  7C E4 3B 78 */	mr r4, r7
/* 80287E88  7D 05 43 78 */	mr r5, r8
/* 80287E8C  7D 26 4B 78 */	mr r6, r9
/* 80287E90  39 81 00 08 */	addi r12, r1, 8
/* 80287E94  48 0D A1 F1 */	bl __ptmf_scall
/* 80287E98  60 00 00 00 */	nop 
/* 80287E9C  48 00 00 50 */	b lbl_80287EEC
lbl_80287EA0:
/* 80287EA0  7F E3 FB 78 */	mr r3, r31
/* 80287EA4  7C 04 03 78 */	mr r4, r0
/* 80287EA8  7C E6 3B 78 */	mr r6, r7
/* 80287EAC  7D 07 43 78 */	mr r7, r8
/* 80287EB0  7D 28 4B 78 */	mr r8, r9
/* 80287EB4  4B FF E1 79 */	bl adaptor_setVariableValue__Q27JStudio8TAdaptorFPQ27JStudio8TControlUlQ37JStudio4data15TEOperationDataPCvUl
/* 80287EB8  48 00 00 34 */	b lbl_80287EEC
lbl_80287EBC:
/* 80287EBC  7F E3 FB 78 */	mr r3, r31
/* 80287EC0  7C 04 03 78 */	mr r4, r0
/* 80287EC4  38 C0 00 03 */	li r6, 3
/* 80287EC8  4B FF E2 05 */	bl adaptor_setVariableValue_n__Q27JStudio8TAdaptorFPQ27JStudio8TControlPCUlUlQ37JStudio4data15TEOperationDataPCvUl
/* 80287ECC  48 00 00 20 */	b lbl_80287EEC
lbl_80287ED0:
/* 80287ED0  7F E3 FB 78 */	mr r3, r31
/* 80287ED4  7C E4 3B 78 */	mr r4, r7
/* 80287ED8  7D 05 43 78 */	mr r5, r8
/* 80287EDC  7D 26 4B 78 */	mr r6, r9
/* 80287EE0  39 81 00 08 */	addi r12, r1, 8
/* 80287EE4  48 0D A1 A1 */	bl __ptmf_scall
/* 80287EE8  60 00 00 00 */	nop 
lbl_80287EEC:
/* 80287EEC  39 61 00 30 */	addi r11, r1, 0x30
/* 80287EF0  48 0D A3 39 */	bl _restgpr_29
/* 80287EF4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80287EF8  7C 08 03 A6 */	mtlr r0
/* 80287EFC  38 21 00 30 */	addi r1, r1, 0x30
/* 80287F00  4E 80 00 20 */	blr 
