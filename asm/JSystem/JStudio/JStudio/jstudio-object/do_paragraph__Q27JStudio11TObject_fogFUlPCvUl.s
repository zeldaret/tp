lbl_80287218:
/* 80287218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028721C  7C 08 02 A6 */	mflr r0
/* 80287220  90 01 00 14 */	stw r0, 0x14(r1)
/* 80287224  7C A8 2B 78 */	mr r8, r5
/* 80287228  7C C9 33 78 */	mr r9, r6
/* 8028722C  81 43 00 34 */	lwz r10, 0x34(r3)
/* 80287230  28 0A 00 00 */	cmplwi r10, 0
/* 80287234  41 82 00 C4 */	beq lbl_802872F8
/* 80287238  81 63 00 14 */	lwz r11, 0x14(r3)
/* 8028723C  54 83 D9 7E */	srwi r3, r4, 5
/* 80287240  54 87 06 FE */	clrlwi r7, r4, 0x1b
/* 80287244  38 03 FF E3 */	addi r0, r3, -29
/* 80287248  28 00 00 10 */	cmplwi r0, 0x10
/* 8028724C  41 81 00 AC */	bgt lbl_802872F8
/* 80287250  3C 60 80 3C */	lis r3, lit_1546@ha /* 0x803C4EF0@ha */
/* 80287254  38 63 4E F0 */	addi r3, r3, lit_1546@l /* 0x803C4EF0@l */
/* 80287258  54 00 10 3A */	slwi r0, r0, 2
/* 8028725C  7C 03 00 2E */	lwzx r0, r3, r0
/* 80287260  7C 09 03 A6 */	mtctr r0
/* 80287264  4E 80 04 20 */	bctr 
/* 80287268  38 A0 00 00 */	li r5, 0
/* 8028726C  48 00 00 64 */	b lbl_802872D0
/* 80287270  38 A0 00 01 */	li r5, 1
/* 80287274  48 00 00 5C */	b lbl_802872D0
/* 80287278  38 A0 00 02 */	li r5, 2
/* 8028727C  48 00 00 54 */	b lbl_802872D0
/* 80287280  38 A0 00 03 */	li r5, 3
/* 80287284  48 00 00 4C */	b lbl_802872D0
/* 80287288  38 A0 00 04 */	li r5, 4
/* 8028728C  48 00 00 44 */	b lbl_802872D0
/* 80287290  38 A0 00 05 */	li r5, 5
/* 80287294  48 00 00 3C */	b lbl_802872D0
/* 80287298  3C 60 80 3A */	lis r3, sauVariableValue_3_COLOR_RGB__Q27JStudio12TAdaptor_fog@ha /* 0x8039AAC0@ha */
/* 8028729C  38 03 AA C0 */	addi r0, r3, sauVariableValue_3_COLOR_RGB__Q27JStudio12TAdaptor_fog@l /* 0x8039AAC0@l */
/* 802872A0  7C 05 03 78 */	mr r5, r0
/* 802872A4  38 C0 00 03 */	li r6, 3
/* 802872A8  48 00 00 44 */	b lbl_802872EC
/* 802872AC  3C 60 80 3A */	lis r3, sauVariableValue_4_COLOR_RGBA__Q27JStudio12TAdaptor_fog@ha /* 0x8039AACC@ha */
/* 802872B0  38 03 AA CC */	addi r0, r3, sauVariableValue_4_COLOR_RGBA__Q27JStudio12TAdaptor_fog@l /* 0x8039AACC@l */
/* 802872B4  7C 05 03 78 */	mr r5, r0
/* 802872B8  38 C0 00 04 */	li r6, 4
/* 802872BC  48 00 00 30 */	b lbl_802872EC
/* 802872C0  38 A2 BA B8 */	la r5, sauVariableValue_2_RANGE_BEGIN_END__Q27JStudio12TAdaptor_fog(r2) /* 804554B8-_SDA2_BASE_ */
/* 802872C4  38 C0 00 02 */	li r6, 2
/* 802872C8  48 00 00 24 */	b lbl_802872EC
/* 802872CC  48 00 00 2C */	b lbl_802872F8
lbl_802872D0:
/* 802872D0  7D 43 53 78 */	mr r3, r10
/* 802872D4  7D 64 5B 78 */	mr r4, r11
/* 802872D8  7C E6 3B 78 */	mr r6, r7
/* 802872DC  7D 07 43 78 */	mr r7, r8
/* 802872E0  7D 28 4B 78 */	mr r8, r9
/* 802872E4  4B FF ED 49 */	bl adaptor_setVariableValue__Q27JStudio8TAdaptorFPQ27JStudio8TControlUlQ37JStudio4data15TEOperationDataPCvUl
/* 802872E8  48 00 00 10 */	b lbl_802872F8
lbl_802872EC:
/* 802872EC  7D 43 53 78 */	mr r3, r10
/* 802872F0  7D 64 5B 78 */	mr r4, r11
/* 802872F4  4B FF ED D9 */	bl adaptor_setVariableValue_n__Q27JStudio8TAdaptorFPQ27JStudio8TControlPCUlUlQ37JStudio4data15TEOperationDataPCvUl
lbl_802872F8:
/* 802872F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802872FC  7C 08 03 A6 */	mtlr r0
/* 80287300  38 21 00 10 */	addi r1, r1, 0x10
/* 80287304  4E 80 00 20 */	blr 
