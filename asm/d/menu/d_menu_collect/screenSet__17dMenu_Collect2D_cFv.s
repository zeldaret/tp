lbl_801B074C:
/* 801B074C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 801B0750  7C 08 02 A6 */	mflr r0
/* 801B0754  90 01 00 54 */	stw r0, 0x54(r1)
/* 801B0758  39 61 00 50 */	addi r11, r1, 0x50
/* 801B075C  48 1B 1A 51 */	bl _savegpr_17
/* 801B0760  7C 7F 1B 78 */	mr r31, r3
/* 801B0764  3C 60 80 39 */	lis r3, lit_3778@ha /* 0x80394F78@ha */
/* 801B0768  3A C3 4F 78 */	addi r22, r3, lit_3778@l /* 0x80394F78@l */
/* 801B076C  4B E6 43 99 */	bl mDoExt_getRubyFont__Fv
/* 801B0770  7C 74 1B 78 */	mr r20, r3
/* 801B0774  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0778  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F743030@ha */
/* 801B077C  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x5F743030@l */
/* 801B0780  38 A0 00 66 */	li r5, 0x66
/* 801B0784  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0788  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B078C  7D 89 03 A6 */	mtctr r12
/* 801B0790  4E 80 04 21 */	bctrl 
/* 801B0794  7E 84 A3 78 */	mr r4, r20
/* 801B0798  81 83 00 00 */	lwz r12, 0(r3)
/* 801B079C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B07A0  7D 89 03 A6 */	mtctr r12
/* 801B07A4  4E 80 04 21 */	bctrl 
/* 801B07A8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B07AC  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F743030@ha */
/* 801B07B0  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x5F743030@l */
/* 801B07B4  38 A0 00 66 */	li r5, 0x66
/* 801B07B8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B07BC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B07C0  7D 89 03 A6 */	mtctr r12
/* 801B07C4  4E 80 04 21 */	bctrl 
/* 801B07C8  38 80 00 20 */	li r4, 0x20
/* 801B07CC  3C A0 80 39 */	lis r5, d_menu_d_menu_collect__stringBase0@ha /* 0x80395330@ha */
/* 801B07D0  38 A5 53 30 */	addi r5, r5, d_menu_d_menu_collect__stringBase0@l /* 0x80395330@l */
/* 801B07D4  38 A5 00 55 */	addi r5, r5, 0x55
/* 801B07D8  4C C6 31 82 */	crclr 6
/* 801B07DC  48 14 FF 71 */	bl setString__10J2DTextBoxFsPCce
/* 801B07E0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B07E4  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F743030@ha */
/* 801B07E8  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x5F743030@l */
/* 801B07EC  38 A0 00 66 */	li r5, 0x66
/* 801B07F0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B07F4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B07F8  7D 89 03 A6 */	mtctr r12
/* 801B07FC  4E 80 04 21 */	bctrl 
/* 801B0800  48 14 FE 59 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B0804  7C 65 1B 78 */	mr r5, r3
/* 801B0808  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801B080C  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801B0810  38 80 03 E1 */	li r4, 0x3e1
/* 801B0814  38 C0 00 00 */	li r6, 0
/* 801B0818  48 06 BD 2D */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801B081C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0820  3C 80 5F 74 */	lis r4, 0x5F74 /* 0x5F743030@ha */
/* 801B0824  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x5F743030@l */
/* 801B0828  38 A0 00 74 */	li r5, 0x74
/* 801B082C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0830  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0834  7D 89 03 A6 */	mtctr r12
/* 801B0838  4E 80 04 21 */	bctrl 
/* 801B083C  3A A0 00 00 */	li r21, 0
/* 801B0840  9A A3 00 B0 */	stb r21, 0xb0(r3)
/* 801B0844  3A E0 00 00 */	li r23, 0
/* 801B0848  3C 60 80 39 */	lis r3, d_menu_d_menu_collect__stringBase0@ha /* 0x80395330@ha */
/* 801B084C  3A 83 53 30 */	addi r20, r3, d_menu_d_menu_collect__stringBase0@l /* 0x80395330@l */
/* 801B0850  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801B0854  3B 43 01 88 */	addi r26, r3, g_meter2_info@l /* 0x80430188@l */
/* 801B0858  3B 36 00 10 */	addi r25, r22, 0x10
/* 801B085C  3B 16 00 28 */	addi r24, r22, 0x28
lbl_801B0860:
/* 801B0860  4B E6 41 91 */	bl mDoExt_getMesgFont__Fv
/* 801B0864  7C 7B 1B 78 */	mr r27, r3
/* 801B0868  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B086C  3A 36 00 40 */	addi r17, r22, 0x40
/* 801B0870  7E 31 AA 14 */	add r17, r17, r21
/* 801B0874  80 B1 00 00 */	lwz r5, 0(r17)
/* 801B0878  80 D1 00 04 */	lwz r6, 4(r17)
/* 801B087C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0880  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0884  7D 89 03 A6 */	mtctr r12
/* 801B0888  4E 80 04 21 */	bctrl 
/* 801B088C  7F 64 DB 78 */	mr r4, r27
/* 801B0890  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0894  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B0898  7D 89 03 A6 */	mtctr r12
/* 801B089C  4E 80 04 21 */	bctrl 
/* 801B08A0  4B E6 41 51 */	bl mDoExt_getMesgFont__Fv
/* 801B08A4  7C 7B 1B 78 */	mr r27, r3
/* 801B08A8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B08AC  3B 96 00 58 */	addi r28, r22, 0x58
/* 801B08B0  7F 9C AA 14 */	add r28, r28, r21
/* 801B08B4  80 BC 00 00 */	lwz r5, 0(r28)
/* 801B08B8  80 DC 00 04 */	lwz r6, 4(r28)
/* 801B08BC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B08C0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B08C4  7D 89 03 A6 */	mtctr r12
/* 801B08C8  4E 80 04 21 */	bctrl 
/* 801B08CC  7F 64 DB 78 */	mr r4, r27
/* 801B08D0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B08D4  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B08D8  7D 89 03 A6 */	mtctr r12
/* 801B08DC  4E 80 04 21 */	bctrl 
/* 801B08E0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B08E4  80 B1 00 00 */	lwz r5, 0(r17)
/* 801B08E8  80 D1 00 04 */	lwz r6, 4(r17)
/* 801B08EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B08F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B08F4  7D 89 03 A6 */	mtctr r12
/* 801B08F8  4E 80 04 21 */	bctrl 
/* 801B08FC  38 80 00 20 */	li r4, 0x20
/* 801B0900  38 B4 00 55 */	addi r5, r20, 0x55
/* 801B0904  4C C6 31 82 */	crclr 6
/* 801B0908  48 14 FE 45 */	bl setString__10J2DTextBoxFsPCce
/* 801B090C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0910  80 BC 00 00 */	lwz r5, 0(r28)
/* 801B0914  80 DC 00 04 */	lwz r6, 4(r28)
/* 801B0918  81 83 00 00 */	lwz r12, 0(r3)
/* 801B091C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0920  7D 89 03 A6 */	mtctr r12
/* 801B0924  4E 80 04 21 */	bctrl 
/* 801B0928  38 80 00 20 */	li r4, 0x20
/* 801B092C  38 B4 00 55 */	addi r5, r20, 0x55
/* 801B0930  4C C6 31 82 */	crclr 6
/* 801B0934  48 14 FE 19 */	bl setString__10J2DTextBoxFsPCce
/* 801B0938  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B093C  80 B1 00 00 */	lwz r5, 0(r17)
/* 801B0940  80 D1 00 04 */	lwz r6, 4(r17)
/* 801B0944  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0948  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B094C  7D 89 03 A6 */	mtctr r12
/* 801B0950  4E 80 04 21 */	bctrl 
/* 801B0954  48 14 FD 05 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B0958  7C 65 1B 78 */	mr r5, r3
/* 801B095C  7F 43 D3 78 */	mr r3, r26
/* 801B0960  38 80 00 60 */	li r4, 0x60
/* 801B0964  38 C0 00 00 */	li r6, 0
/* 801B0968  48 06 BB DD */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801B096C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0970  80 BC 00 00 */	lwz r5, 0(r28)
/* 801B0974  80 DC 00 04 */	lwz r6, 4(r28)
/* 801B0978  81 83 00 00 */	lwz r12, 0(r3)
/* 801B097C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0980  7D 89 03 A6 */	mtctr r12
/* 801B0984  4E 80 04 21 */	bctrl 
/* 801B0988  48 14 FC D1 */	bl getStringPtr__10J2DTextBoxCFv
/* 801B098C  7C 65 1B 78 */	mr r5, r3
/* 801B0990  7F 43 D3 78 */	mr r3, r26
/* 801B0994  38 80 00 5F */	li r4, 0x5f
/* 801B0998  38 C0 00 00 */	li r6, 0
/* 801B099C  48 06 BB A9 */	bl getStringKanji__13dMeter2Info_cFUlPcP14JMSMesgEntry_c
/* 801B09A0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B09A4  7C D9 AA 14 */	add r6, r25, r21
/* 801B09A8  80 A6 00 00 */	lwz r5, 0(r6)
/* 801B09AC  80 C6 00 04 */	lwz r6, 4(r6)
/* 801B09B0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B09B4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B09B8  7D 89 03 A6 */	mtctr r12
/* 801B09BC  4E 80 04 21 */	bctrl 
/* 801B09C0  38 00 00 00 */	li r0, 0
/* 801B09C4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B09C8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B09CC  7C D8 AA 14 */	add r6, r24, r21
/* 801B09D0  80 A6 00 00 */	lwz r5, 0(r6)
/* 801B09D4  80 C6 00 04 */	lwz r6, 4(r6)
/* 801B09D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B09DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B09E0  7D 89 03 A6 */	mtctr r12
/* 801B09E4  4E 80 04 21 */	bctrl 
/* 801B09E8  38 00 00 00 */	li r0, 0
/* 801B09EC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B09F0  3A F7 00 01 */	addi r23, r23, 1
/* 801B09F4  2C 17 00 03 */	cmpwi r23, 3
/* 801B09F8  3A B5 00 08 */	addi r21, r21, 8
/* 801B09FC  41 80 FE 64 */	blt lbl_801B0860
/* 801B0A00  3B 20 00 00 */	li r25, 0
/* 801B0A04  3A 80 00 00 */	li r20, 0
/* 801B0A08  3C 60 80 39 */	lis r3, d_menu_d_menu_collect__stringBase0@ha /* 0x80395330@ha */
/* 801B0A0C  3A A3 53 30 */	addi r21, r3, d_menu_d_menu_collect__stringBase0@l /* 0x80395330@l */
lbl_801B0A10:
/* 801B0A10  4B E6 3F E1 */	bl mDoExt_getMesgFont__Fv
/* 801B0A14  7C 77 1B 78 */	mr r23, r3
/* 801B0A18  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801B0A1C  3A 36 00 70 */	addi r17, r22, 0x70
/* 801B0A20  7E 31 A2 14 */	add r17, r17, r20
/* 801B0A24  80 B1 00 00 */	lwz r5, 0(r17)
/* 801B0A28  80 D1 00 04 */	lwz r6, 4(r17)
/* 801B0A2C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0A30  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0A34  7D 89 03 A6 */	mtctr r12
/* 801B0A38  4E 80 04 21 */	bctrl 
/* 801B0A3C  7E E4 BB 78 */	mr r4, r23
/* 801B0A40  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0A44  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B0A48  7D 89 03 A6 */	mtctr r12
/* 801B0A4C  4E 80 04 21 */	bctrl 
/* 801B0A50  4B E6 3F A1 */	bl mDoExt_getMesgFont__Fv
/* 801B0A54  7C 77 1B 78 */	mr r23, r3
/* 801B0A58  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801B0A5C  3B 16 00 98 */	addi r24, r22, 0x98
/* 801B0A60  7F 18 A2 14 */	add r24, r24, r20
/* 801B0A64  80 B8 00 00 */	lwz r5, 0(r24)
/* 801B0A68  80 D8 00 04 */	lwz r6, 4(r24)
/* 801B0A6C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0A70  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0A74  7D 89 03 A6 */	mtctr r12
/* 801B0A78  4E 80 04 21 */	bctrl 
/* 801B0A7C  7E E4 BB 78 */	mr r4, r23
/* 801B0A80  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0A84  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B0A88  7D 89 03 A6 */	mtctr r12
/* 801B0A8C  4E 80 04 21 */	bctrl 
/* 801B0A90  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801B0A94  80 B1 00 00 */	lwz r5, 0(r17)
/* 801B0A98  80 D1 00 04 */	lwz r6, 4(r17)
/* 801B0A9C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0AA0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0AA4  7D 89 03 A6 */	mtctr r12
/* 801B0AA8  4E 80 04 21 */	bctrl 
/* 801B0AAC  38 80 00 20 */	li r4, 0x20
/* 801B0AB0  38 B5 00 55 */	addi r5, r21, 0x55
/* 801B0AB4  4C C6 31 82 */	crclr 6
/* 801B0AB8  48 14 FC 95 */	bl setString__10J2DTextBoxFsPCce
/* 801B0ABC  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801B0AC0  80 B8 00 00 */	lwz r5, 0(r24)
/* 801B0AC4  80 D8 00 04 */	lwz r6, 4(r24)
/* 801B0AC8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0ACC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0AD0  7D 89 03 A6 */	mtctr r12
/* 801B0AD4  4E 80 04 21 */	bctrl 
/* 801B0AD8  38 80 00 20 */	li r4, 0x20
/* 801B0ADC  38 B5 00 55 */	addi r5, r21, 0x55
/* 801B0AE0  4C C6 31 82 */	crclr 6
/* 801B0AE4  48 14 FC 69 */	bl setString__10J2DTextBoxFsPCce
/* 801B0AE8  3B 39 00 01 */	addi r25, r25, 1
/* 801B0AEC  2C 19 00 05 */	cmpwi r25, 5
/* 801B0AF0  3A 94 00 08 */	addi r20, r20, 8
/* 801B0AF4  41 80 FF 1C */	blt lbl_801B0A10
/* 801B0AF8  4B E6 3E F9 */	bl mDoExt_getMesgFont__Fv
/* 801B0AFC  7C 74 1B 78 */	mr r20, r3
/* 801B0B00  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0B04  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3034@ha */
/* 801B0B08  38 C4 30 34 */	addi r6, r4, 0x3034 /* 0x5F6E3034@l */
/* 801B0B0C  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B0B10  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B0B14  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0B18  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0B1C  7D 89 03 A6 */	mtctr r12
/* 801B0B20  4E 80 04 21 */	bctrl 
/* 801B0B24  7E 84 A3 78 */	mr r4, r20
/* 801B0B28  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0B2C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B0B30  7D 89 03 A6 */	mtctr r12
/* 801B0B34  4E 80 04 21 */	bctrl 
/* 801B0B38  4B E6 3E B9 */	bl mDoExt_getMesgFont__Fv
/* 801B0B3C  7C 74 1B 78 */	mr r20, r3
/* 801B0B40  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0B44  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3035@ha */
/* 801B0B48  38 C4 30 35 */	addi r6, r4, 0x3035 /* 0x5F6E3035@l */
/* 801B0B4C  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B0B50  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B0B54  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0B58  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0B5C  7D 89 03 A6 */	mtctr r12
/* 801B0B60  4E 80 04 21 */	bctrl 
/* 801B0B64  7E 84 A3 78 */	mr r4, r20
/* 801B0B68  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0B6C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B0B70  7D 89 03 A6 */	mtctr r12
/* 801B0B74  4E 80 04 21 */	bctrl 
/* 801B0B78  4B E6 3E 79 */	bl mDoExt_getMesgFont__Fv
/* 801B0B7C  7C 74 1B 78 */	mr r20, r3
/* 801B0B80  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0B84  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3036@ha */
/* 801B0B88  38 C4 30 36 */	addi r6, r4, 0x3036 /* 0x5F6E3036@l */
/* 801B0B8C  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B0B90  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B0B94  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0B98  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0B9C  7D 89 03 A6 */	mtctr r12
/* 801B0BA0  4E 80 04 21 */	bctrl 
/* 801B0BA4  7E 84 A3 78 */	mr r4, r20
/* 801B0BA8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0BAC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B0BB0  7D 89 03 A6 */	mtctr r12
/* 801B0BB4  4E 80 04 21 */	bctrl 
/* 801B0BB8  4B E6 3E 39 */	bl mDoExt_getMesgFont__Fv
/* 801B0BBC  7C 74 1B 78 */	mr r20, r3
/* 801B0BC0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0BC4  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3037@ha */
/* 801B0BC8  38 C4 30 37 */	addi r6, r4, 0x3037 /* 0x5F6E3037@l */
/* 801B0BCC  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B0BD0  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B0BD4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0BD8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0BDC  7D 89 03 A6 */	mtctr r12
/* 801B0BE0  4E 80 04 21 */	bctrl 
/* 801B0BE4  7E 84 A3 78 */	mr r4, r20
/* 801B0BE8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0BEC  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B0BF0  7D 89 03 A6 */	mtctr r12
/* 801B0BF4  4E 80 04 21 */	bctrl 
/* 801B0BF8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0BFC  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3034@ha */
/* 801B0C00  38 C4 30 34 */	addi r6, r4, 0x3034 /* 0x5F6E3034@l */
/* 801B0C04  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B0C08  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B0C0C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0C10  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0C14  7D 89 03 A6 */	mtctr r12
/* 801B0C18  4E 80 04 21 */	bctrl 
/* 801B0C1C  38 80 00 20 */	li r4, 0x20
/* 801B0C20  3C A0 80 39 */	lis r5, d_menu_d_menu_collect__stringBase0@ha /* 0x80395330@ha */
/* 801B0C24  38 A5 53 30 */	addi r5, r5, d_menu_d_menu_collect__stringBase0@l /* 0x80395330@l */
/* 801B0C28  38 A5 00 55 */	addi r5, r5, 0x55
/* 801B0C2C  4C C6 31 82 */	crclr 6
/* 801B0C30  48 14 FB 1D */	bl setString__10J2DTextBoxFsPCce
/* 801B0C34  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0C38  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3035@ha */
/* 801B0C3C  38 C4 30 35 */	addi r6, r4, 0x3035 /* 0x5F6E3035@l */
/* 801B0C40  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B0C44  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B0C48  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0C4C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0C50  7D 89 03 A6 */	mtctr r12
/* 801B0C54  4E 80 04 21 */	bctrl 
/* 801B0C58  38 80 00 20 */	li r4, 0x20
/* 801B0C5C  3C A0 80 39 */	lis r5, d_menu_d_menu_collect__stringBase0@ha /* 0x80395330@ha */
/* 801B0C60  38 A5 53 30 */	addi r5, r5, d_menu_d_menu_collect__stringBase0@l /* 0x80395330@l */
/* 801B0C64  38 A5 00 55 */	addi r5, r5, 0x55
/* 801B0C68  4C C6 31 82 */	crclr 6
/* 801B0C6C  48 14 FA E1 */	bl setString__10J2DTextBoxFsPCce
/* 801B0C70  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0C74  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3036@ha */
/* 801B0C78  38 C4 30 36 */	addi r6, r4, 0x3036 /* 0x5F6E3036@l */
/* 801B0C7C  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B0C80  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B0C84  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0C88  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0C8C  7D 89 03 A6 */	mtctr r12
/* 801B0C90  4E 80 04 21 */	bctrl 
/* 801B0C94  38 80 00 20 */	li r4, 0x20
/* 801B0C98  3C A0 80 39 */	lis r5, d_menu_d_menu_collect__stringBase0@ha /* 0x80395330@ha */
/* 801B0C9C  38 A5 53 30 */	addi r5, r5, d_menu_d_menu_collect__stringBase0@l /* 0x80395330@l */
/* 801B0CA0  38 A5 00 55 */	addi r5, r5, 0x55
/* 801B0CA4  4C C6 31 82 */	crclr 6
/* 801B0CA8  48 14 FA A5 */	bl setString__10J2DTextBoxFsPCce
/* 801B0CAC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0CB0  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3037@ha */
/* 801B0CB4  38 C4 30 37 */	addi r6, r4, 0x3037 /* 0x5F6E3037@l */
/* 801B0CB8  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B0CBC  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B0CC0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0CC4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0CC8  7D 89 03 A6 */	mtctr r12
/* 801B0CCC  4E 80 04 21 */	bctrl 
/* 801B0CD0  38 80 00 20 */	li r4, 0x20
/* 801B0CD4  3C A0 80 39 */	lis r5, d_menu_d_menu_collect__stringBase0@ha /* 0x80395330@ha */
/* 801B0CD8  38 A5 53 30 */	addi r5, r5, d_menu_d_menu_collect__stringBase0@l /* 0x80395330@l */
/* 801B0CDC  38 A5 00 55 */	addi r5, r5, 0x55
/* 801B0CE0  4C C6 31 82 */	crclr 6
/* 801B0CE4  48 14 FA 69 */	bl setString__10J2DTextBoxFsPCce
/* 801B0CE8  4B E6 3D 09 */	bl mDoExt_getMesgFont__Fv
/* 801B0CEC  7C 74 1B 78 */	mr r20, r3
/* 801B0CF0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0CF4  3C 80 65 78 */	lis r4, 0x6578 /* 0x65787431@ha */
/* 801B0CF8  38 C4 74 31 */	addi r6, r4, 0x7431 /* 0x65787431@l */
/* 801B0CFC  3C 80 00 66 */	lis r4, 0x0066 /* 0x00665F74@ha */
/* 801B0D00  38 A4 5F 74 */	addi r5, r4, 0x5F74 /* 0x00665F74@l */
/* 801B0D04  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0D08  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0D0C  7D 89 03 A6 */	mtctr r12
/* 801B0D10  4E 80 04 21 */	bctrl 
/* 801B0D14  7E 84 A3 78 */	mr r4, r20
/* 801B0D18  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0D1C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B0D20  7D 89 03 A6 */	mtctr r12
/* 801B0D24  4E 80 04 21 */	bctrl 
/* 801B0D28  4B E6 3C C9 */	bl mDoExt_getMesgFont__Fv
/* 801B0D2C  7C 74 1B 78 */	mr r20, r3
/* 801B0D30  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0D34  3C 80 65 78 */	lis r4, 0x6578 /* 0x65787430@ha */
/* 801B0D38  38 C4 74 30 */	addi r6, r4, 0x7430 /* 0x65787430@l */
/* 801B0D3C  3C 80 00 66 */	lis r4, 0x0066 /* 0x00665F74@ha */
/* 801B0D40  38 A4 5F 74 */	addi r5, r4, 0x5F74 /* 0x00665F74@l */
/* 801B0D44  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0D48  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0D4C  7D 89 03 A6 */	mtctr r12
/* 801B0D50  4E 80 04 21 */	bctrl 
/* 801B0D54  7E 84 A3 78 */	mr r4, r20
/* 801B0D58  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0D5C  81 8C 00 9C */	lwz r12, 0x9c(r12)
/* 801B0D60  7D 89 03 A6 */	mtctr r12
/* 801B0D64  4E 80 04 21 */	bctrl 
/* 801B0D68  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0D6C  3C 80 65 78 */	lis r4, 0x6578 /* 0x65787431@ha */
/* 801B0D70  38 C4 74 31 */	addi r6, r4, 0x7431 /* 0x65787431@l */
/* 801B0D74  3C 80 00 66 */	lis r4, 0x0066 /* 0x00665F74@ha */
/* 801B0D78  38 A4 5F 74 */	addi r5, r4, 0x5F74 /* 0x00665F74@l */
/* 801B0D7C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0D80  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0D84  7D 89 03 A6 */	mtctr r12
/* 801B0D88  4E 80 04 21 */	bctrl 
/* 801B0D8C  38 80 01 00 */	li r4, 0x100
/* 801B0D90  3C A0 80 39 */	lis r5, d_menu_d_menu_collect__stringBase0@ha /* 0x80395330@ha */
/* 801B0D94  38 A5 53 30 */	addi r5, r5, d_menu_d_menu_collect__stringBase0@l /* 0x80395330@l */
/* 801B0D98  38 A5 00 55 */	addi r5, r5, 0x55
/* 801B0D9C  4C C6 31 82 */	crclr 6
/* 801B0DA0  48 14 F9 AD */	bl setString__10J2DTextBoxFsPCce
/* 801B0DA4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0DA8  3C 80 65 78 */	lis r4, 0x6578 /* 0x65787430@ha */
/* 801B0DAC  38 C4 74 30 */	addi r6, r4, 0x7430 /* 0x65787430@l */
/* 801B0DB0  3C 80 00 66 */	lis r4, 0x0066 /* 0x00665F74@ha */
/* 801B0DB4  38 A4 5F 74 */	addi r5, r4, 0x5F74 /* 0x00665F74@l */
/* 801B0DB8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0DBC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0DC0  7D 89 03 A6 */	mtctr r12
/* 801B0DC4  4E 80 04 21 */	bctrl 
/* 801B0DC8  38 80 01 00 */	li r4, 0x100
/* 801B0DCC  3C A0 80 39 */	lis r5, d_menu_d_menu_collect__stringBase0@ha /* 0x80395330@ha */
/* 801B0DD0  38 A5 53 30 */	addi r5, r5, d_menu_d_menu_collect__stringBase0@l /* 0x80395330@l */
/* 801B0DD4  38 A5 00 55 */	addi r5, r5, 0x55
/* 801B0DD8  4C C6 31 82 */	crclr 6
/* 801B0DDC  48 14 F9 71 */	bl setString__10J2DTextBoxFsPCce
/* 801B0DE0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0DE4  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3030@ha */
/* 801B0DE8  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x5F6E3030@l */
/* 801B0DEC  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B0DF0  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B0DF4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0DF8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0DFC  7D 89 03 A6 */	mtctr r12
/* 801B0E00  4E 80 04 21 */	bctrl 
/* 801B0E04  38 00 00 00 */	li r0, 0
/* 801B0E08  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B0E0C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0E10  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3031@ha */
/* 801B0E14  38 C4 30 31 */	addi r6, r4, 0x3031 /* 0x5F6E3031@l */
/* 801B0E18  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B0E1C  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B0E20  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0E24  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0E28  7D 89 03 A6 */	mtctr r12
/* 801B0E2C  4E 80 04 21 */	bctrl 
/* 801B0E30  38 00 00 00 */	li r0, 0
/* 801B0E34  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B0E38  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0E3C  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3032@ha */
/* 801B0E40  38 C4 30 32 */	addi r6, r4, 0x3032 /* 0x5F6E3032@l */
/* 801B0E44  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B0E48  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B0E4C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0E50  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0E54  7D 89 03 A6 */	mtctr r12
/* 801B0E58  4E 80 04 21 */	bctrl 
/* 801B0E5C  38 00 00 00 */	li r0, 0
/* 801B0E60  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B0E64  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0E68  3C 80 5F 6E */	lis r4, 0x5F6E /* 0x5F6E3033@ha */
/* 801B0E6C  38 C4 30 33 */	addi r6, r4, 0x3033 /* 0x5F6E3033@l */
/* 801B0E70  3C 80 69 74 */	lis r4, 0x6974 /* 0x6974656D@ha */
/* 801B0E74  38 A4 65 6D */	addi r5, r4, 0x656D /* 0x6974656D@l */
/* 801B0E78  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0E7C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0E80  7D 89 03 A6 */	mtctr r12
/* 801B0E84  4E 80 04 21 */	bctrl 
/* 801B0E88  38 00 00 00 */	li r0, 0
/* 801B0E8C  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B0E90  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0E94  3C 80 65 78 */	lis r4, 0x6578 /* 0x65787431@ha */
/* 801B0E98  38 C4 74 31 */	addi r6, r4, 0x7431 /* 0x65787431@l */
/* 801B0E9C  3C 80 00 69 */	lis r4, 0x0069 /* 0x00695F74@ha */
/* 801B0EA0  38 A4 5F 74 */	addi r5, r4, 0x5F74 /* 0x00695F74@l */
/* 801B0EA4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0EA8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0EAC  7D 89 03 A6 */	mtctr r12
/* 801B0EB0  4E 80 04 21 */	bctrl 
/* 801B0EB4  38 00 00 00 */	li r0, 0
/* 801B0EB8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B0EBC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0EC0  3C 80 65 78 */	lis r4, 0x6578 /* 0x65787430@ha */
/* 801B0EC4  38 C4 74 30 */	addi r6, r4, 0x7430 /* 0x65787430@l */
/* 801B0EC8  3C 80 00 69 */	lis r4, 0x0069 /* 0x00695F74@ha */
/* 801B0ECC  38 A4 5F 74 */	addi r5, r4, 0x5F74 /* 0x00695F74@l */
/* 801B0ED0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0ED4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0ED8  7D 89 03 A6 */	mtctr r12
/* 801B0EDC  4E 80 04 21 */	bctrl 
/* 801B0EE0  38 00 00 00 */	li r0, 0
/* 801B0EE4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B0EE8  98 1F 02 2D */	stb r0, 0x22d(r31)
/* 801B0EEC  98 1F 02 33 */	stb r0, 0x233(r31)
/* 801B0EF0  98 1F 02 39 */	stb r0, 0x239(r31)
/* 801B0EF4  3A 80 00 01 */	li r20, 1
/* 801B0EF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B0EFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B0F00  3A A3 00 CC */	addi r21, r3, 0xcc
/* 801B0F04  7E A3 AB 78 */	mr r3, r21
/* 801B0F08  38 80 00 28 */	li r4, 0x28
/* 801B0F0C  4B E8 2F BD */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B0F10  2C 03 00 00 */	cmpwi r3, 0
/* 801B0F14  40 82 00 48 */	bne lbl_801B0F5C
/* 801B0F18  3A C0 00 00 */	li r22, 0
/* 801B0F1C  7E A3 AB 78 */	mr r3, r21
/* 801B0F20  38 80 00 3F */	li r4, 0x3f
/* 801B0F24  4B E8 2F A5 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B0F28  2C 03 00 00 */	cmpwi r3, 0
/* 801B0F2C  41 82 00 24 */	beq lbl_801B0F50
/* 801B0F30  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B0F34  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B0F38  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 801B0F3C  38 80 03 02 */	li r4, 0x302
/* 801B0F40  4B E8 3A 7D */	bl isEventBit__11dSv_event_cCFUs
/* 801B0F44  2C 03 00 00 */	cmpwi r3, 0
/* 801B0F48  40 82 00 08 */	bne lbl_801B0F50
/* 801B0F4C  3A C0 00 01 */	li r22, 1
lbl_801B0F50:
/* 801B0F50  56 C0 06 3F */	clrlwi. r0, r22, 0x18
/* 801B0F54  40 82 00 08 */	bne lbl_801B0F5C
/* 801B0F58  3A 80 00 00 */	li r20, 0
lbl_801B0F5C:
/* 801B0F5C  56 83 06 3E */	clrlwi r3, r20, 0x18
/* 801B0F60  30 03 FF FF */	addic r0, r3, -1
/* 801B0F64  7C 00 19 10 */	subfe r0, r0, r3
/* 801B0F68  98 1F 02 3F */	stb r0, 0x23f(r31)
/* 801B0F6C  88 1F 02 3F */	lbz r0, 0x23f(r31)
/* 801B0F70  28 00 00 00 */	cmplwi r0, 0
/* 801B0F74  41 82 00 EC */	beq lbl_801B1060
/* 801B0F78  7E A3 AB 78 */	mr r3, r21
/* 801B0F7C  38 80 00 28 */	li r4, 0x28
/* 801B0F80  4B E8 2F 49 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B0F84  2C 03 00 00 */	cmpwi r3, 0
/* 801B0F88  41 82 00 58 */	beq lbl_801B0FE0
/* 801B0F8C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0F90  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F3030@ha */
/* 801B0F94  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x6E5F3030@l */
/* 801B0F98  38 A0 6B 65 */	li r5, 0x6b65
/* 801B0F9C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0FA0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0FA4  7D 89 03 A6 */	mtctr r12
/* 801B0FA8  4E 80 04 21 */	bctrl 
/* 801B0FAC  38 00 00 00 */	li r0, 0
/* 801B0FB0  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B0FB4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B0FB8  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F3031@ha */
/* 801B0FBC  38 C4 30 31 */	addi r6, r4, 0x3031 /* 0x6E5F3031@l */
/* 801B0FC0  38 A0 6B 65 */	li r5, 0x6b65
/* 801B0FC4  81 83 00 00 */	lwz r12, 0(r3)
/* 801B0FC8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B0FCC  7D 89 03 A6 */	mtctr r12
/* 801B0FD0  4E 80 04 21 */	bctrl 
/* 801B0FD4  38 00 00 01 */	li r0, 1
/* 801B0FD8  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B0FDC  48 00 00 84 */	b lbl_801B1060
lbl_801B0FE0:
/* 801B0FE0  7E A3 AB 78 */	mr r3, r21
/* 801B0FE4  38 80 00 3F */	li r4, 0x3f
/* 801B0FE8  4B E8 2E E1 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B0FEC  2C 03 00 00 */	cmpwi r3, 0
/* 801B0FF0  41 82 00 70 */	beq lbl_801B1060
/* 801B0FF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B0FF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B0FFC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 801B1000  38 80 03 02 */	li r4, 0x302
/* 801B1004  4B E8 39 B9 */	bl isEventBit__11dSv_event_cCFUs
/* 801B1008  2C 03 00 00 */	cmpwi r3, 0
/* 801B100C  40 82 00 54 */	bne lbl_801B1060
/* 801B1010  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B1014  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F3030@ha */
/* 801B1018  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x6E5F3030@l */
/* 801B101C  38 A0 6B 65 */	li r5, 0x6b65
/* 801B1020  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1024  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B1028  7D 89 03 A6 */	mtctr r12
/* 801B102C  4E 80 04 21 */	bctrl 
/* 801B1030  38 00 00 01 */	li r0, 1
/* 801B1034  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B1038  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B103C  3C 80 6E 5F */	lis r4, 0x6E5F /* 0x6E5F3031@ha */
/* 801B1040  38 C4 30 31 */	addi r6, r4, 0x3031 /* 0x6E5F3031@l */
/* 801B1044  38 A0 6B 65 */	li r5, 0x6b65
/* 801B1048  81 83 00 00 */	lwz r12, 0(r3)
/* 801B104C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B1050  7D 89 03 A6 */	mtctr r12
/* 801B1054  4E 80 04 21 */	bctrl 
/* 801B1058  38 00 00 00 */	li r0, 0
/* 801B105C  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_801B1060:
/* 801B1060  3A 80 00 01 */	li r20, 1
/* 801B1064  7E A3 AB 78 */	mr r3, r21
/* 801B1068  38 80 00 29 */	li r4, 0x29
/* 801B106C  4B E8 2E 5D */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B1070  2C 03 00 00 */	cmpwi r3, 0
/* 801B1074  40 82 00 1C */	bne lbl_801B1090
/* 801B1078  7E A3 AB 78 */	mr r3, r21
/* 801B107C  38 80 00 49 */	li r4, 0x49
/* 801B1080  4B E8 2E 49 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B1084  2C 03 00 00 */	cmpwi r3, 0
/* 801B1088  40 82 00 08 */	bne lbl_801B1090
/* 801B108C  3A 80 00 00 */	li r20, 0
lbl_801B1090:
/* 801B1090  56 83 06 3E */	clrlwi r3, r20, 0x18
/* 801B1094  30 03 FF FF */	addic r0, r3, -1
/* 801B1098  7C 00 19 10 */	subfe r0, r0, r3
/* 801B109C  98 1F 02 45 */	stb r0, 0x245(r31)
/* 801B10A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B10A4  A0 03 61 C0 */	lhz r0, g_dComIfG_gameInfo@l(r3)  /* 0x804061C0@l */
/* 801B10A8  28 00 00 0F */	cmplwi r0, 0xf
/* 801B10AC  40 81 00 10 */	ble lbl_801B10BC
/* 801B10B0  38 00 00 01 */	li r0, 1
/* 801B10B4  98 1F 02 4B */	stb r0, 0x24b(r31)
/* 801B10B8  48 00 00 0C */	b lbl_801B10C4
lbl_801B10BC:
/* 801B10BC  38 00 00 00 */	li r0, 0
/* 801B10C0  98 1F 02 4B */	stb r0, 0x24b(r31)
lbl_801B10C4:
/* 801B10C4  48 00 64 41 */	bl getMaskMdlVisible__17dMenu_Collect3D_cFv
/* 801B10C8  98 7F 02 51 */	stb r3, 0x251(r31)
/* 801B10CC  38 00 00 00 */	li r0, 0
/* 801B10D0  98 1F 02 2E */	stb r0, 0x22e(r31)
/* 801B10D4  98 1F 02 34 */	stb r0, 0x234(r31)
/* 801B10D8  98 1F 02 3A */	stb r0, 0x23a(r31)
/* 801B10DC  3A 80 00 01 */	li r20, 1
/* 801B10E0  7E A3 AB 78 */	mr r3, r21
/* 801B10E4  38 80 00 2B */	li r4, 0x2b
/* 801B10E8  4B E8 2D E1 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B10EC  2C 03 00 00 */	cmpwi r3, 0
/* 801B10F0  40 82 00 1C */	bne lbl_801B110C
/* 801B10F4  7E A3 AB 78 */	mr r3, r21
/* 801B10F8  38 80 00 2A */	li r4, 0x2a
/* 801B10FC  4B E8 2D CD */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B1100  2C 03 00 00 */	cmpwi r3, 0
/* 801B1104  40 82 00 08 */	bne lbl_801B110C
/* 801B1108  3A 80 00 00 */	li r20, 0
lbl_801B110C:
/* 801B110C  56 83 06 3E */	clrlwi r3, r20, 0x18
/* 801B1110  30 03 FF FF */	addic r0, r3, -1
/* 801B1114  7C 00 19 10 */	subfe r0, r0, r3
/* 801B1118  98 1F 02 40 */	stb r0, 0x240(r31)
/* 801B111C  88 1F 02 40 */	lbz r0, 0x240(r31)
/* 801B1120  28 00 00 00 */	cmplwi r0, 0
/* 801B1124  41 82 00 E0 */	beq lbl_801B1204
/* 801B1128  7E A3 AB 78 */	mr r3, r21
/* 801B112C  38 80 00 2B */	li r4, 0x2b
/* 801B1130  4B E8 2D 99 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B1134  2C 03 00 00 */	cmpwi r3, 0
/* 801B1138  41 82 00 60 */	beq lbl_801B1198
/* 801B113C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B1140  3C 80 65 5F */	lis r4, 0x655F /* 0x655F3030@ha */
/* 801B1144  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x655F3030@l */
/* 801B1148  3C 80 00 74 */	lis r4, 0x0074 /* 0x00746174@ha */
/* 801B114C  38 A4 61 74 */	addi r5, r4, 0x6174 /* 0x00746174@l */
/* 801B1150  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1154  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B1158  7D 89 03 A6 */	mtctr r12
/* 801B115C  4E 80 04 21 */	bctrl 
/* 801B1160  38 00 00 01 */	li r0, 1
/* 801B1164  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B1168  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B116C  3C 80 65 5F */	lis r4, 0x655F /* 0x655F3031@ha */
/* 801B1170  38 C4 30 31 */	addi r6, r4, 0x3031 /* 0x655F3031@l */
/* 801B1174  3C 80 00 74 */	lis r4, 0x0074 /* 0x00746174@ha */
/* 801B1178  38 A4 61 74 */	addi r5, r4, 0x6174 /* 0x00746174@l */
/* 801B117C  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1180  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B1184  7D 89 03 A6 */	mtctr r12
/* 801B1188  4E 80 04 21 */	bctrl 
/* 801B118C  38 00 00 00 */	li r0, 0
/* 801B1190  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B1194  48 00 00 70 */	b lbl_801B1204
lbl_801B1198:
/* 801B1198  7E A3 AB 78 */	mr r3, r21
/* 801B119C  38 80 00 2A */	li r4, 0x2a
/* 801B11A0  4B E8 2D 29 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B11A4  2C 03 00 00 */	cmpwi r3, 0
/* 801B11A8  41 82 00 5C */	beq lbl_801B1204
/* 801B11AC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B11B0  3C 80 65 5F */	lis r4, 0x655F /* 0x655F3030@ha */
/* 801B11B4  38 C4 30 30 */	addi r6, r4, 0x3030 /* 0x655F3030@l */
/* 801B11B8  3C 80 00 74 */	lis r4, 0x0074 /* 0x00746174@ha */
/* 801B11BC  38 A4 61 74 */	addi r5, r4, 0x6174 /* 0x00746174@l */
/* 801B11C0  81 83 00 00 */	lwz r12, 0(r3)
/* 801B11C4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B11C8  7D 89 03 A6 */	mtctr r12
/* 801B11CC  4E 80 04 21 */	bctrl 
/* 801B11D0  38 00 00 00 */	li r0, 0
/* 801B11D4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B11D8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B11DC  3C 80 65 5F */	lis r4, 0x655F /* 0x655F3031@ha */
/* 801B11E0  38 C4 30 31 */	addi r6, r4, 0x3031 /* 0x655F3031@l */
/* 801B11E4  3C 80 00 74 */	lis r4, 0x0074 /* 0x00746174@ha */
/* 801B11E8  38 A4 61 74 */	addi r5, r4, 0x6174 /* 0x00746174@l */
/* 801B11EC  81 83 00 00 */	lwz r12, 0(r3)
/* 801B11F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B11F4  7D 89 03 A6 */	mtctr r12
/* 801B11F8  4E 80 04 21 */	bctrl 
/* 801B11FC  38 00 00 01 */	li r0, 1
/* 801B1200  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_801B1204:
/* 801B1204  7E A3 AB 78 */	mr r3, r21
/* 801B1208  38 80 00 2C */	li r4, 0x2c
/* 801B120C  4B E8 2C BD */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B1210  98 7F 02 46 */	stb r3, 0x246(r31)
/* 801B1214  38 80 00 00 */	li r4, 0
/* 801B1218  98 9F 02 4C */	stb r4, 0x24c(r31)
/* 801B121C  98 9F 02 52 */	stb r4, 0x252(r31)
/* 801B1220  98 9F 02 2F */	stb r4, 0x22f(r31)
/* 801B1224  98 9F 02 35 */	stb r4, 0x235(r31)
/* 801B1228  98 9F 02 3B */	stb r4, 0x23b(r31)
/* 801B122C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B1230  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B1234  88 03 00 13 */	lbz r0, 0x13(r3)
/* 801B1238  28 00 00 2E */	cmplwi r0, 0x2e
/* 801B123C  40 82 00 14 */	bne lbl_801B1250
/* 801B1240  98 9F 02 41 */	stb r4, 0x241(r31)
/* 801B1244  98 9F 02 47 */	stb r4, 0x247(r31)
/* 801B1248  98 9F 02 4D */	stb r4, 0x24d(r31)
/* 801B124C  48 00 00 34 */	b lbl_801B1280
lbl_801B1250:
/* 801B1250  7E A3 AB 78 */	mr r3, r21
/* 801B1254  38 80 00 2F */	li r4, 0x2f
/* 801B1258  4B E8 2C 71 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B125C  98 7F 02 41 */	stb r3, 0x241(r31)
/* 801B1260  7E A3 AB 78 */	mr r3, r21
/* 801B1264  38 80 00 31 */	li r4, 0x31
/* 801B1268  4B E8 2C 61 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B126C  98 7F 02 47 */	stb r3, 0x247(r31)
/* 801B1270  7E A3 AB 78 */	mr r3, r21
/* 801B1274  38 80 00 30 */	li r4, 0x30
/* 801B1278  4B E8 2C 51 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B127C  98 7F 02 4D */	stb r3, 0x24d(r31)
lbl_801B1280:
/* 801B1280  38 00 00 00 */	li r0, 0
/* 801B1284  98 1F 02 53 */	stb r0, 0x253(r31)
/* 801B1288  38 00 00 01 */	li r0, 1
/* 801B128C  98 1F 02 30 */	stb r0, 0x230(r31)
/* 801B1290  38 60 00 43 */	li r3, 0x43
/* 801B1294  38 80 00 01 */	li r4, 1
/* 801B1298  4B EE 6C 49 */	bl checkItemGet__FUci
/* 801B129C  2C 03 00 00 */	cmpwi r3, 0
/* 801B12A0  41 82 00 10 */	beq lbl_801B12B0
/* 801B12A4  38 00 00 01 */	li r0, 1
/* 801B12A8  98 1F 02 36 */	stb r0, 0x236(r31)
/* 801B12AC  48 00 00 0C */	b lbl_801B12B8
lbl_801B12B0:
/* 801B12B0  38 00 00 00 */	li r0, 0
/* 801B12B4  98 1F 02 36 */	stb r0, 0x236(r31)
lbl_801B12B8:
/* 801B12B8  7F E3 FB 78 */	mr r3, r31
/* 801B12BC  4B FF F4 61 */	bl isInsectIconVisible__17dMenu_Collect2D_cFv
/* 801B12C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B12C4  41 82 00 10 */	beq lbl_801B12D4
/* 801B12C8  38 00 00 01 */	li r0, 1
/* 801B12CC  98 1F 02 3C */	stb r0, 0x23c(r31)
/* 801B12D0  48 00 00 0C */	b lbl_801B12DC
lbl_801B12D4:
/* 801B12D4  38 00 00 00 */	li r0, 0
/* 801B12D8  98 1F 02 3C */	stb r0, 0x23c(r31)
lbl_801B12DC:
/* 801B12DC  7F E3 FB 78 */	mr r3, r31
/* 801B12E0  4B FF F3 3D */	bl isSkillIconVisible__17dMenu_Collect2D_cFv
/* 801B12E4  98 7F 02 42 */	stb r3, 0x242(r31)
/* 801B12E8  38 80 00 00 */	li r4, 0
/* 801B12EC  98 9F 02 48 */	stb r4, 0x248(r31)
/* 801B12F0  98 9F 02 4E */	stb r4, 0x24e(r31)
/* 801B12F4  98 9F 02 54 */	stb r4, 0x254(r31)
/* 801B12F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B12FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B1300  88 03 00 16 */	lbz r0, 0x16(r3)
/* 801B1304  28 00 00 FF */	cmplwi r0, 0xff
/* 801B1308  41 82 00 10 */	beq lbl_801B1318
/* 801B130C  38 00 00 01 */	li r0, 1
/* 801B1310  98 1F 02 31 */	stb r0, 0x231(r31)
/* 801B1314  48 00 00 08 */	b lbl_801B131C
lbl_801B1318:
/* 801B1318  98 9F 02 31 */	stb r4, 0x231(r31)
lbl_801B131C:
/* 801B131C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B1320  3A 83 61 C0 */	addi r20, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B1324  88 14 01 0C */	lbz r0, 0x10c(r20)
/* 801B1328  98 1F 02 37 */	stb r0, 0x237(r31)
/* 801B132C  7F E3 FB 78 */	mr r3, r31
/* 801B1330  4B FF F2 79 */	bl isFishIconVisible__17dMenu_Collect2D_cFv
/* 801B1334  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B1338  41 82 00 10 */	beq lbl_801B1348
/* 801B133C  38 00 00 01 */	li r0, 1
/* 801B1340  98 1F 02 3D */	stb r0, 0x23d(r31)
/* 801B1344  48 00 00 0C */	b lbl_801B1350
lbl_801B1348:
/* 801B1348  38 00 00 00 */	li r0, 0
/* 801B134C  98 1F 02 3D */	stb r0, 0x23d(r31)
lbl_801B1350:
/* 801B1350  3C 60 80 43 */	lis r3, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 801B1354  38 63 EB C8 */	addi r3, r3, g_drawHIO@l /* 0x8042EBC8@l */
/* 801B1358  A8 03 07 60 */	lha r0, 0x760(r3)
/* 801B135C  2C 00 00 00 */	cmpwi r0, 0
/* 801B1360  40 81 00 10 */	ble lbl_801B1370
/* 801B1364  38 00 00 01 */	li r0, 1
/* 801B1368  98 1F 02 43 */	stb r0, 0x243(r31)
/* 801B136C  48 00 00 24 */	b lbl_801B1390
lbl_801B1370:
/* 801B1370  48 06 D3 75 */	bl dMeter2Info_getRecieveLetterNum__Fv
/* 801B1374  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B1378  41 82 00 10 */	beq lbl_801B1388
/* 801B137C  38 00 00 01 */	li r0, 1
/* 801B1380  98 1F 02 43 */	stb r0, 0x243(r31)
/* 801B1384  48 00 00 0C */	b lbl_801B1390
lbl_801B1388:
/* 801B1388  38 00 00 00 */	li r0, 0
/* 801B138C  98 1F 02 43 */	stb r0, 0x243(r31)
lbl_801B1390:
/* 801B1390  38 60 00 00 */	li r3, 0
/* 801B1394  98 7F 02 49 */	stb r3, 0x249(r31)
/* 801B1398  98 7F 02 4F */	stb r3, 0x24f(r31)
/* 801B139C  98 7F 02 55 */	stb r3, 0x255(r31)
/* 801B13A0  38 00 00 01 */	li r0, 1
/* 801B13A4  98 1F 02 32 */	stb r0, 0x232(r31)
/* 801B13A8  98 1F 02 38 */	stb r0, 0x238(r31)
/* 801B13AC  98 7F 02 3E */	stb r3, 0x23e(r31)
/* 801B13B0  98 7F 02 44 */	stb r3, 0x244(r31)
/* 801B13B4  98 7F 02 4A */	stb r3, 0x24a(r31)
/* 801B13B8  98 7F 02 50 */	stb r3, 0x250(r31)
/* 801B13BC  98 7F 02 56 */	stb r3, 0x256(r31)
/* 801B13C0  B0 7F 01 84 */	sth r3, 0x184(r31)
/* 801B13C4  B0 7F 01 90 */	sth r3, 0x190(r31)
/* 801B13C8  B0 7F 01 9C */	sth r3, 0x19c(r31)
/* 801B13CC  7E A3 AB 78 */	mr r3, r21
/* 801B13D0  38 80 00 28 */	li r4, 0x28
/* 801B13D4  4B E8 2A F5 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B13D8  2C 03 00 00 */	cmpwi r3, 0
/* 801B13DC  41 82 00 10 */	beq lbl_801B13EC
/* 801B13E0  38 00 01 8D */	li r0, 0x18d
/* 801B13E4  B0 1F 01 A8 */	sth r0, 0x1a8(r31)
/* 801B13E8  48 00 00 0C */	b lbl_801B13F4
lbl_801B13EC:
/* 801B13EC  38 00 01 A4 */	li r0, 0x1a4
/* 801B13F0  B0 1F 01 A8 */	sth r0, 0x1a8(r31)
lbl_801B13F4:
/* 801B13F4  7E A3 AB 78 */	mr r3, r21
/* 801B13F8  38 80 00 49 */	li r4, 0x49
/* 801B13FC  4B E8 2A CD */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B1400  2C 03 00 00 */	cmpwi r3, 0
/* 801B1404  41 82 00 10 */	beq lbl_801B1414
/* 801B1408  38 00 01 AE */	li r0, 0x1ae
/* 801B140C  B0 1F 01 B4 */	sth r0, 0x1b4(r31)
/* 801B1410  48 00 00 0C */	b lbl_801B141C
lbl_801B1414:
/* 801B1414  38 00 01 8E */	li r0, 0x18e
/* 801B1418  B0 1F 01 B4 */	sth r0, 0x1b4(r31)
lbl_801B141C:
/* 801B141C  38 00 01 86 */	li r0, 0x186
/* 801B1420  B0 1F 01 C0 */	sth r0, 0x1c0(r31)
/* 801B1424  88 1F 02 51 */	lbz r0, 0x251(r31)
/* 801B1428  28 00 00 02 */	cmplwi r0, 2
/* 801B142C  40 82 00 48 */	bne lbl_801B1474
/* 801B1430  48 00 60 6D */	bl getMirrorNum__17dMenu_Collect3D_cFv
/* 801B1434  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801B1438  28 00 00 04 */	cmplwi r0, 4
/* 801B143C  41 80 00 10 */	blt lbl_801B144C
/* 801B1440  38 00 02 0C */	li r0, 0x20c
/* 801B1444  B0 1F 01 CC */	sth r0, 0x1cc(r31)
/* 801B1448  48 00 00 50 */	b lbl_801B1498
lbl_801B144C:
/* 801B144C  48 00 60 51 */	bl getMirrorNum__17dMenu_Collect3D_cFv
/* 801B1450  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801B1454  28 00 00 02 */	cmplwi r0, 2
/* 801B1458  41 80 00 10 */	blt lbl_801B1468
/* 801B145C  38 00 02 0B */	li r0, 0x20b
/* 801B1460  B0 1F 01 CC */	sth r0, 0x1cc(r31)
/* 801B1464  48 00 00 34 */	b lbl_801B1498
lbl_801B1468:
/* 801B1468  38 00 02 0A */	li r0, 0x20a
/* 801B146C  B0 1F 01 CC */	sth r0, 0x1cc(r31)
/* 801B1470  48 00 00 28 */	b lbl_801B1498
lbl_801B1474:
/* 801B1474  48 00 5F C1 */	bl getCrystalNum__17dMenu_Collect3D_cFv
/* 801B1478  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801B147C  28 00 00 01 */	cmplwi r0, 1
/* 801B1480  41 81 00 10 */	bgt lbl_801B1490
/* 801B1484  38 00 05 AA */	li r0, 0x5aa
/* 801B1488  B0 1F 01 CC */	sth r0, 0x1cc(r31)
/* 801B148C  48 00 00 0C */	b lbl_801B1498
lbl_801B1490:
/* 801B1490  38 00 05 AB */	li r0, 0x5ab
/* 801B1494  B0 1F 01 CC */	sth r0, 0x1cc(r31)
lbl_801B1498:
/* 801B1498  38 00 00 00 */	li r0, 0
/* 801B149C  B0 1F 01 86 */	sth r0, 0x186(r31)
/* 801B14A0  B0 1F 01 92 */	sth r0, 0x192(r31)
/* 801B14A4  B0 1F 01 9E */	sth r0, 0x19e(r31)
/* 801B14A8  7E A3 AB 78 */	mr r3, r21
/* 801B14AC  38 80 00 2B */	li r4, 0x2b
/* 801B14B0  4B E8 2A 19 */	bl isFirstBit__21dSv_player_get_item_cCFUc
/* 801B14B4  2C 03 00 00 */	cmpwi r3, 0
/* 801B14B8  41 82 00 10 */	beq lbl_801B14C8
/* 801B14BC  38 00 01 90 */	li r0, 0x190
/* 801B14C0  B0 1F 01 AA */	sth r0, 0x1aa(r31)
/* 801B14C4  48 00 00 0C */	b lbl_801B14D0
lbl_801B14C8:
/* 801B14C8  38 00 01 8F */	li r0, 0x18f
/* 801B14CC  B0 1F 01 AA */	sth r0, 0x1aa(r31)
lbl_801B14D0:
/* 801B14D0  38 00 01 91 */	li r0, 0x191
/* 801B14D4  B0 1F 01 B6 */	sth r0, 0x1b6(r31)
/* 801B14D8  38 00 01 92 */	li r0, 0x192
/* 801B14DC  B0 1F 01 C2 */	sth r0, 0x1c2(r31)
/* 801B14E0  38 60 00 00 */	li r3, 0
/* 801B14E4  B0 7F 01 CE */	sth r3, 0x1ce(r31)
/* 801B14E8  B0 7F 01 88 */	sth r3, 0x188(r31)
/* 801B14EC  B0 7F 01 94 */	sth r3, 0x194(r31)
/* 801B14F0  B0 7F 01 A0 */	sth r3, 0x1a0(r31)
/* 801B14F4  38 00 01 94 */	li r0, 0x194
/* 801B14F8  B0 1F 01 AC */	sth r0, 0x1ac(r31)
/* 801B14FC  38 00 01 96 */	li r0, 0x196
/* 801B1500  B0 1F 01 B8 */	sth r0, 0x1b8(r31)
/* 801B1504  38 00 01 95 */	li r0, 0x195
/* 801B1508  B0 1F 01 C4 */	sth r0, 0x1c4(r31)
/* 801B150C  B0 7F 01 D0 */	sth r3, 0x1d0(r31)
/* 801B1510  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B1514  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B1518  4B E8 15 91 */	bl getRupeeMax__21dSv_player_status_a_cCFv
/* 801B151C  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 801B1520  28 00 01 2C */	cmplwi r0, 0x12c
/* 801B1524  40 82 00 10 */	bne lbl_801B1534
/* 801B1528  38 00 01 99 */	li r0, 0x199
/* 801B152C  B0 1F 01 8A */	sth r0, 0x18a(r31)
/* 801B1530  48 00 00 30 */	b lbl_801B1560
lbl_801B1534:
/* 801B1534  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B1538  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B153C  4B E8 15 6D */	bl getRupeeMax__21dSv_player_status_a_cCFv
/* 801B1540  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 801B1544  28 00 02 58 */	cmplwi r0, 0x258
/* 801B1548  40 82 00 10 */	bne lbl_801B1558
/* 801B154C  38 00 01 9A */	li r0, 0x19a
/* 801B1550  B0 1F 01 8A */	sth r0, 0x18a(r31)
/* 801B1554  48 00 00 0C */	b lbl_801B1560
lbl_801B1558:
/* 801B1558  38 00 01 9B */	li r0, 0x19b
/* 801B155C  B0 1F 01 8A */	sth r0, 0x18a(r31)
lbl_801B1560:
/* 801B1560  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B1564  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B1568  88 1E 00 F8 */	lbz r0, 0xf8(r30)
/* 801B156C  28 00 00 1E */	cmplwi r0, 0x1e
/* 801B1570  40 82 00 10 */	bne lbl_801B1580
/* 801B1574  38 00 01 B9 */	li r0, 0x1b9
/* 801B1578  B0 1F 01 96 */	sth r0, 0x196(r31)
/* 801B157C  48 00 00 20 */	b lbl_801B159C
lbl_801B1580:
/* 801B1580  28 00 00 3C */	cmplwi r0, 0x3c
/* 801B1584  40 82 00 10 */	bne lbl_801B1594
/* 801B1588  38 00 01 BA */	li r0, 0x1ba
/* 801B158C  B0 1F 01 96 */	sth r0, 0x196(r31)
/* 801B1590  48 00 00 0C */	b lbl_801B159C
lbl_801B1594:
/* 801B1594  38 00 01 BB */	li r0, 0x1bb
/* 801B1598  B0 1F 01 96 */	sth r0, 0x196(r31)
lbl_801B159C:
/* 801B159C  38 00 05 B8 */	li r0, 0x5b8
/* 801B15A0  B0 1F 01 A2 */	sth r0, 0x1a2(r31)
/* 801B15A4  38 00 05 B0 */	li r0, 0x5b0
/* 801B15A8  B0 1F 01 AE */	sth r0, 0x1ae(r31)
/* 801B15AC  38 00 00 00 */	li r0, 0
/* 801B15B0  B0 1F 01 BA */	sth r0, 0x1ba(r31)
/* 801B15B4  B0 1F 01 C6 */	sth r0, 0x1c6(r31)
/* 801B15B8  B0 1F 01 D2 */	sth r0, 0x1d2(r31)
/* 801B15BC  48 08 6E 29 */	bl getSmellTypeMessageID__12dMsgObject_cFv
/* 801B15C0  B0 7F 01 8C */	sth r3, 0x18c(r31)
/* 801B15C4  38 00 02 45 */	li r0, 0x245
/* 801B15C8  B0 1F 01 98 */	sth r0, 0x198(r31)
/* 801B15CC  38 00 05 A1 */	li r0, 0x5a1
/* 801B15D0  B0 1F 01 A4 */	sth r0, 0x1a4(r31)
/* 801B15D4  38 00 04 C8 */	li r0, 0x4c8
/* 801B15D8  B0 1F 01 B0 */	sth r0, 0x1b0(r31)
/* 801B15DC  38 60 00 00 */	li r3, 0
/* 801B15E0  B0 7F 01 BC */	sth r3, 0x1bc(r31)
/* 801B15E4  B0 7F 01 C8 */	sth r3, 0x1c8(r31)
/* 801B15E8  B0 7F 01 D4 */	sth r3, 0x1d4(r31)
/* 801B15EC  38 00 00 60 */	li r0, 0x60
/* 801B15F0  B0 1F 01 8E */	sth r0, 0x18e(r31)
/* 801B15F4  38 00 00 5F */	li r0, 0x5f
/* 801B15F8  B0 1F 01 9A */	sth r0, 0x19a(r31)
/* 801B15FC  B0 7F 01 A6 */	sth r3, 0x1a6(r31)
/* 801B1600  B0 7F 01 B2 */	sth r3, 0x1b2(r31)
/* 801B1604  B0 7F 01 BE */	sth r3, 0x1be(r31)
/* 801B1608  B0 7F 01 CA */	sth r3, 0x1ca(r31)
/* 801B160C  B0 7F 01 D6 */	sth r3, 0x1d6(r31)
/* 801B1610  B0 7F 01 D8 */	sth r3, 0x1d8(r31)
/* 801B1614  B0 7F 01 E4 */	sth r3, 0x1e4(r31)
/* 801B1618  B0 7F 01 F0 */	sth r3, 0x1f0(r31)
/* 801B161C  A0 7F 01 A8 */	lhz r3, 0x1a8(r31)
/* 801B1620  38 03 01 00 */	addi r0, r3, 0x100
/* 801B1624  B0 1F 01 FC */	sth r0, 0x1fc(r31)
/* 801B1628  A0 7F 01 B4 */	lhz r3, 0x1b4(r31)
/* 801B162C  38 03 01 00 */	addi r0, r3, 0x100
/* 801B1630  B0 1F 02 08 */	sth r0, 0x208(r31)
/* 801B1634  A0 7F 01 C0 */	lhz r3, 0x1c0(r31)
/* 801B1638  38 03 01 00 */	addi r0, r3, 0x100
/* 801B163C  B0 1F 02 14 */	sth r0, 0x214(r31)
/* 801B1640  88 1F 02 51 */	lbz r0, 0x251(r31)
/* 801B1644  28 00 00 02 */	cmplwi r0, 2
/* 801B1648  40 82 00 48 */	bne lbl_801B1690
/* 801B164C  48 00 5E 51 */	bl getMirrorNum__17dMenu_Collect3D_cFv
/* 801B1650  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801B1654  28 00 00 04 */	cmplwi r0, 4
/* 801B1658  41 80 00 10 */	blt lbl_801B1668
/* 801B165C  38 00 03 0C */	li r0, 0x30c
/* 801B1660  B0 1F 02 20 */	sth r0, 0x220(r31)
/* 801B1664  48 00 00 50 */	b lbl_801B16B4
lbl_801B1668:
/* 801B1668  48 00 5E 35 */	bl getMirrorNum__17dMenu_Collect3D_cFv
/* 801B166C  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801B1670  28 00 00 02 */	cmplwi r0, 2
/* 801B1674  41 80 00 10 */	blt lbl_801B1684
/* 801B1678  38 00 03 0B */	li r0, 0x30b
/* 801B167C  B0 1F 02 20 */	sth r0, 0x220(r31)
/* 801B1680  48 00 00 34 */	b lbl_801B16B4
lbl_801B1684:
/* 801B1684  38 00 03 0A */	li r0, 0x30a
/* 801B1688  B0 1F 02 20 */	sth r0, 0x220(r31)
/* 801B168C  48 00 00 28 */	b lbl_801B16B4
lbl_801B1690:
/* 801B1690  48 00 5D A5 */	bl getCrystalNum__17dMenu_Collect3D_cFv
/* 801B1694  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 801B1698  28 00 00 01 */	cmplwi r0, 1
/* 801B169C  41 81 00 10 */	bgt lbl_801B16AC
/* 801B16A0  38 00 05 AC */	li r0, 0x5ac
/* 801B16A4  B0 1F 02 20 */	sth r0, 0x220(r31)
/* 801B16A8  48 00 00 0C */	b lbl_801B16B4
lbl_801B16AC:
/* 801B16AC  38 00 05 AD */	li r0, 0x5ad
/* 801B16B0  B0 1F 02 20 */	sth r0, 0x220(r31)
lbl_801B16B4:
/* 801B16B4  38 80 00 00 */	li r4, 0
/* 801B16B8  B0 9F 01 DA */	sth r4, 0x1da(r31)
/* 801B16BC  B0 9F 01 E6 */	sth r4, 0x1e6(r31)
/* 801B16C0  B0 9F 01 F2 */	sth r4, 0x1f2(r31)
/* 801B16C4  A0 7F 01 AA */	lhz r3, 0x1aa(r31)
/* 801B16C8  38 03 01 00 */	addi r0, r3, 0x100
/* 801B16CC  B0 1F 01 FE */	sth r0, 0x1fe(r31)
/* 801B16D0  A0 7F 01 B6 */	lhz r3, 0x1b6(r31)
/* 801B16D4  38 03 01 00 */	addi r0, r3, 0x100
/* 801B16D8  B0 1F 02 0A */	sth r0, 0x20a(r31)
/* 801B16DC  A0 7F 01 C2 */	lhz r3, 0x1c2(r31)
/* 801B16E0  38 03 01 00 */	addi r0, r3, 0x100
/* 801B16E4  B0 1F 02 16 */	sth r0, 0x216(r31)
/* 801B16E8  B0 9F 02 22 */	sth r4, 0x222(r31)
/* 801B16EC  B0 9F 01 DC */	sth r4, 0x1dc(r31)
/* 801B16F0  B0 9F 01 E8 */	sth r4, 0x1e8(r31)
/* 801B16F4  B0 9F 01 F4 */	sth r4, 0x1f4(r31)
/* 801B16F8  A0 7F 01 AC */	lhz r3, 0x1ac(r31)
/* 801B16FC  38 03 01 00 */	addi r0, r3, 0x100
/* 801B1700  B0 1F 02 00 */	sth r0, 0x200(r31)
/* 801B1704  A0 7F 01 B8 */	lhz r3, 0x1b8(r31)
/* 801B1708  38 03 01 00 */	addi r0, r3, 0x100
/* 801B170C  B0 1F 02 0C */	sth r0, 0x20c(r31)
/* 801B1710  A0 7F 01 C4 */	lhz r3, 0x1c4(r31)
/* 801B1714  38 03 01 00 */	addi r0, r3, 0x100
/* 801B1718  B0 1F 02 18 */	sth r0, 0x218(r31)
/* 801B171C  B0 9F 02 24 */	sth r4, 0x224(r31)
/* 801B1720  A0 7F 01 8A */	lhz r3, 0x18a(r31)
/* 801B1724  38 03 01 00 */	addi r0, r3, 0x100
/* 801B1728  B0 1F 01 DE */	sth r0, 0x1de(r31)
/* 801B172C  A0 7F 01 96 */	lhz r3, 0x196(r31)
/* 801B1730  38 03 01 00 */	addi r0, r3, 0x100
/* 801B1734  B0 1F 01 EA */	sth r0, 0x1ea(r31)
/* 801B1738  38 00 05 B9 */	li r0, 0x5b9
/* 801B173C  B0 1F 01 F6 */	sth r0, 0x1f6(r31)
/* 801B1740  38 00 05 B1 */	li r0, 0x5b1
/* 801B1744  B0 1F 02 02 */	sth r0, 0x202(r31)
/* 801B1748  B0 9F 02 0E */	sth r4, 0x20e(r31)
/* 801B174C  B0 9F 02 1A */	sth r4, 0x21a(r31)
/* 801B1750  B0 9F 02 26 */	sth r4, 0x226(r31)
/* 801B1754  48 08 6C 91 */	bl getSmellTypeMessageID__12dMsgObject_cFv
/* 801B1758  38 03 01 00 */	addi r0, r3, 0x100
/* 801B175C  B0 1F 01 E0 */	sth r0, 0x1e0(r31)
/* 801B1760  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B1764  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B1768  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 801B176C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 801B1770  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 801B1774  A0 84 03 90 */	lhz r4, 0x390(r4)
/* 801B1778  4B E8 32 45 */	bl isEventBit__11dSv_event_cCFUs
/* 801B177C  2C 03 00 00 */	cmpwi r3, 0
/* 801B1780  41 82 00 10 */	beq lbl_801B1790
/* 801B1784  38 00 12 D8 */	li r0, 0x12d8
/* 801B1788  B0 1F 01 EC */	sth r0, 0x1ec(r31)
/* 801B178C  48 00 00 10 */	b lbl_801B179C
lbl_801B1790:
/* 801B1790  A0 7F 01 98 */	lhz r3, 0x198(r31)
/* 801B1794  38 03 01 00 */	addi r0, r3, 0x100
/* 801B1798  B0 1F 01 EC */	sth r0, 0x1ec(r31)
lbl_801B179C:
/* 801B179C  38 00 05 A2 */	li r0, 0x5a2
/* 801B17A0  B0 1F 01 F8 */	sth r0, 0x1f8(r31)
/* 801B17A4  38 00 04 C9 */	li r0, 0x4c9
/* 801B17A8  B0 1F 02 04 */	sth r0, 0x204(r31)
/* 801B17AC  38 60 00 00 */	li r3, 0
/* 801B17B0  B0 7F 02 10 */	sth r3, 0x210(r31)
/* 801B17B4  B0 7F 02 1C */	sth r3, 0x21c(r31)
/* 801B17B8  B0 7F 02 28 */	sth r3, 0x228(r31)
/* 801B17BC  38 00 04 C5 */	li r0, 0x4c5
/* 801B17C0  B0 1F 01 E2 */	sth r0, 0x1e2(r31)
/* 801B17C4  38 00 04 C6 */	li r0, 0x4c6
/* 801B17C8  B0 1F 01 EE */	sth r0, 0x1ee(r31)
/* 801B17CC  B0 7F 01 FA */	sth r3, 0x1fa(r31)
/* 801B17D0  B0 7F 02 06 */	sth r3, 0x206(r31)
/* 801B17D4  B0 7F 02 12 */	sth r3, 0x212(r31)
/* 801B17D8  B0 7F 02 1E */	sth r3, 0x21e(r31)
/* 801B17DC  B0 7F 02 2A */	sth r3, 0x22a(r31)
/* 801B17E0  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 801B17E4  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 801B17E8  88 03 00 DF */	lbz r0, 0xdf(r3)
/* 801B17EC  98 1F 02 57 */	stb r0, 0x257(r31)
/* 801B17F0  88 03 00 E0 */	lbz r0, 0xe0(r3)
/* 801B17F4  98 1F 02 58 */	stb r0, 0x258(r31)
/* 801B17F8  48 00 5D 0D */	bl getMaskMdlVisible__17dMenu_Collect3D_cFv
/* 801B17FC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801B1800  40 82 00 2C */	bne lbl_801B182C
/* 801B1804  88 1F 02 57 */	lbz r0, 0x257(r31)
/* 801B1808  28 00 00 06 */	cmplwi r0, 6
/* 801B180C  40 82 00 20 */	bne lbl_801B182C
/* 801B1810  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B1814  28 00 00 00 */	cmplwi r0, 0
/* 801B1818  40 82 00 14 */	bne lbl_801B182C
/* 801B181C  38 00 00 03 */	li r0, 3
/* 801B1820  98 1F 02 57 */	stb r0, 0x257(r31)
/* 801B1824  38 00 00 00 */	li r0, 0
/* 801B1828  98 1F 02 58 */	stb r0, 0x258(r31)
lbl_801B182C:
/* 801B182C  88 1F 02 57 */	lbz r0, 0x257(r31)
/* 801B1830  98 1F 02 59 */	stb r0, 0x259(r31)
/* 801B1834  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B1838  98 1F 02 5A */	stb r0, 0x25a(r31)
/* 801B183C  38 60 00 00 */	li r3, 0
/* 801B1840  B0 7F 01 7C */	sth r3, 0x17c(r31)
/* 801B1844  B0 7F 01 7E */	sth r3, 0x17e(r31)
/* 801B1848  B0 7F 01 80 */	sth r3, 0x180(r31)
/* 801B184C  B0 7F 01 82 */	sth r3, 0x182(r31)
/* 801B1850  38 00 00 FF */	li r0, 0xff
/* 801B1854  98 1F 02 5B */	stb r0, 0x25b(r31)
/* 801B1858  98 1F 02 5C */	stb r0, 0x25c(r31)
/* 801B185C  98 1F 02 5D */	stb r0, 0x25d(r31)
/* 801B1860  98 7F 02 5E */	stb r3, 0x25e(r31)
/* 801B1864  98 7F 02 5F */	stb r3, 0x25f(r31)
/* 801B1868  98 1F 02 60 */	stb r0, 0x260(r31)
/* 801B186C  98 1F 02 61 */	stb r0, 0x261(r31)
/* 801B1870  7F E3 FB 78 */	mr r3, r31
/* 801B1874  38 80 FF FF */	li r4, -1
/* 801B1878  48 00 21 59 */	bl setEquipItemFrameColorSword__17dMenu_Collect2D_cFi
/* 801B187C  7F E3 FB 78 */	mr r3, r31
/* 801B1880  38 80 FF FF */	li r4, -1
/* 801B1884  48 00 24 71 */	bl setEquipItemFrameColorShield__17dMenu_Collect2D_cFi
/* 801B1888  7F E3 FB 78 */	mr r3, r31
/* 801B188C  38 80 FF FF */	li r4, -1
/* 801B1890  48 00 27 4D */	bl setEquipItemFrameColorClothes__17dMenu_Collect2D_cFi
/* 801B1894  3B 20 00 00 */	li r25, 0
/* 801B1898  3B 00 00 00 */	li r24, 0
/* 801B189C  3A E0 00 00 */	li r23, 0
/* 801B18A0  3B A0 00 00 */	li r29, 0
/* 801B18A4  3B 80 00 00 */	li r28, 0
lbl_801B18A8:
/* 801B18A8  3A C0 00 00 */	li r22, 0
/* 801B18AC  3B 60 00 00 */	li r27, 0
/* 801B18B0  7F 5F E2 14 */	add r26, r31, r28
/* 801B18B4  7E BF EA 14 */	add r21, r31, r29
lbl_801B18B8:
/* 801B18B8  7F E3 FB 78 */	mr r3, r31
/* 801B18BC  7E E4 BB 78 */	mr r4, r23
/* 801B18C0  7E C5 B3 78 */	mr r5, r22
/* 801B18C4  38 C0 00 01 */	li r6, 1
/* 801B18C8  48 00 2E 35 */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B18CC  38 A0 00 00 */	li r5, 0
/* 801B18D0  7C 84 2A 78 */	xor r4, r4, r5
/* 801B18D4  7C 60 2A 78 */	xor r0, r3, r5
/* 801B18D8  7C 80 03 79 */	or. r0, r4, r0
/* 801B18DC  41 82 00 8C */	beq lbl_801B1968
/* 801B18E0  38 60 00 6C */	li r3, 0x6c
/* 801B18E4  48 11 D3 69 */	bl __nw__FUl
/* 801B18E8  7C 71 1B 79 */	or. r17, r3, r3
/* 801B18EC  41 82 00 38 */	beq lbl_801B1924
/* 801B18F0  7F E3 FB 78 */	mr r3, r31
/* 801B18F4  7E E4 BB 78 */	mr r4, r23
/* 801B18F8  7E C5 B3 78 */	mr r5, r22
/* 801B18FC  38 C0 00 01 */	li r6, 1
/* 801B1900  48 00 2D FD */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B1904  7C 86 23 78 */	mr r6, r4
/* 801B1908  7C 65 1B 78 */	mr r5, r3
/* 801B190C  7E 23 8B 78 */	mr r3, r17
/* 801B1910  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801B1914  38 E0 00 00 */	li r7, 0
/* 801B1918  39 00 00 00 */	li r8, 0
/* 801B191C  48 0A 20 69 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801B1920  7C 71 1B 78 */	mr r17, r3
lbl_801B1924:
/* 801B1924  38 1B 00 B0 */	addi r0, r27, 0xb0
/* 801B1928  7E 3A 01 2E */	stwx r17, r26, r0
/* 801B192C  57 20 06 3F */	clrlwi. r0, r25, 0x18
/* 801B1930  40 82 00 10 */	bne lbl_801B1940
/* 801B1934  56 F2 06 3E */	clrlwi r18, r23, 0x18
/* 801B1938  56 D3 06 3E */	clrlwi r19, r22, 0x18
/* 801B193C  3B 20 00 01 */	li r25, 1
lbl_801B1940:
/* 801B1940  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 801B1944  40 82 00 2C */	bne lbl_801B1970
/* 801B1948  88 1F 02 57 */	lbz r0, 0x257(r31)
/* 801B194C  7C 00 B8 00 */	cmpw r0, r23
/* 801B1950  40 82 00 20 */	bne lbl_801B1970
/* 801B1954  88 1F 02 58 */	lbz r0, 0x258(r31)
/* 801B1958  7C 00 B0 00 */	cmpw r0, r22
/* 801B195C  40 82 00 14 */	bne lbl_801B1970
/* 801B1960  3B 00 00 01 */	li r24, 1
/* 801B1964  48 00 00 0C */	b lbl_801B1970
lbl_801B1968:
/* 801B1968  38 1B 00 B0 */	addi r0, r27, 0xb0
/* 801B196C  7C BA 01 2E */	stwx r5, r26, r0
lbl_801B1970:
/* 801B1970  7F E3 FB 78 */	mr r3, r31
/* 801B1974  7E E4 BB 78 */	mr r4, r23
/* 801B1978  7E C5 B3 78 */	mr r5, r22
/* 801B197C  38 C0 00 00 */	li r6, 0
/* 801B1980  48 00 2D 7D */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B1984  38 00 00 00 */	li r0, 0
/* 801B1988  7C 84 02 78 */	xor r4, r4, r0
/* 801B198C  7C 60 02 78 */	xor r0, r3, r0
/* 801B1990  7C 80 03 79 */	or. r0, r4, r0
/* 801B1994  41 82 00 98 */	beq lbl_801B1A2C
/* 801B1998  38 16 02 2D */	addi r0, r22, 0x22d
/* 801B199C  7C 15 00 AE */	lbzx r0, r21, r0
/* 801B19A0  28 00 00 00 */	cmplwi r0, 0
/* 801B19A4  40 82 00 14 */	bne lbl_801B19B8
/* 801B19A8  2C 17 00 05 */	cmpwi r23, 5
/* 801B19AC  40 82 00 48 */	bne lbl_801B19F4
/* 801B19B0  2C 16 00 00 */	cmpwi r22, 0
/* 801B19B4  40 82 00 40 */	bne lbl_801B19F4
lbl_801B19B8:
/* 801B19B8  7F E3 FB 78 */	mr r3, r31
/* 801B19BC  7E E4 BB 78 */	mr r4, r23
/* 801B19C0  7E C5 B3 78 */	mr r5, r22
/* 801B19C4  38 C0 00 00 */	li r6, 0
/* 801B19C8  48 00 2D 35 */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B19CC  7C 65 1B 78 */	mr r5, r3
/* 801B19D0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B19D4  7C 86 23 78 */	mr r6, r4
/* 801B19D8  81 83 00 00 */	lwz r12, 0(r3)
/* 801B19DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B19E0  7D 89 03 A6 */	mtctr r12
/* 801B19E4  4E 80 04 21 */	bctrl 
/* 801B19E8  38 00 00 01 */	li r0, 1
/* 801B19EC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 801B19F0  48 00 00 3C */	b lbl_801B1A2C
lbl_801B19F4:
/* 801B19F4  7F E3 FB 78 */	mr r3, r31
/* 801B19F8  7E E4 BB 78 */	mr r4, r23
/* 801B19FC  7E C5 B3 78 */	mr r5, r22
/* 801B1A00  38 C0 00 00 */	li r6, 0
/* 801B1A04  48 00 2C F9 */	bl getItemTag__17dMenu_Collect2D_cFiib
/* 801B1A08  7C 65 1B 78 */	mr r5, r3
/* 801B1A0C  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801B1A10  7C 86 23 78 */	mr r6, r4
/* 801B1A14  81 83 00 00 */	lwz r12, 0(r3)
/* 801B1A18  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 801B1A1C  7D 89 03 A6 */	mtctr r12
/* 801B1A20  4E 80 04 21 */	bctrl 
/* 801B1A24  38 00 00 00 */	li r0, 0
/* 801B1A28  98 03 00 B0 */	stb r0, 0xb0(r3)
lbl_801B1A2C:
/* 801B1A2C  3A D6 00 01 */	addi r22, r22, 1
/* 801B1A30  2C 16 00 06 */	cmpwi r22, 6
/* 801B1A34  3B 7B 00 04 */	addi r27, r27, 4
/* 801B1A38  41 80 FE 80 */	blt lbl_801B18B8
/* 801B1A3C  3A F7 00 01 */	addi r23, r23, 1
/* 801B1A40  2C 17 00 07 */	cmpwi r23, 7
/* 801B1A44  3B BD 00 06 */	addi r29, r29, 6
/* 801B1A48  3B 9C 00 18 */	addi r28, r28, 0x18
/* 801B1A4C  41 80 FE 5C */	blt lbl_801B18A8
/* 801B1A50  57 00 06 3F */	clrlwi. r0, r24, 0x18
/* 801B1A54  40 82 00 0C */	bne lbl_801B1A60
/* 801B1A58  9A 5F 02 57 */	stb r18, 0x257(r31)
/* 801B1A5C  9A 7F 02 58 */	stb r19, 0x258(r31)
lbl_801B1A60:
/* 801B1A60  38 60 00 6C */	li r3, 0x6c
/* 801B1A64  48 11 D1 E9 */	bl __nw__FUl
/* 801B1A68  7C 60 1B 79 */	or. r0, r3, r3
/* 801B1A6C  41 82 00 28 */	beq lbl_801B1A94
/* 801B1A70  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801B1A74  3C A0 6B 69 */	lis r5, 0x6B69 /* 0x6B695F6E@ha */
/* 801B1A78  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x6B695F6E@l */
/* 801B1A7C  3C A0 00 6C */	lis r5, 0x006C /* 0x006C696E@ha */
/* 801B1A80  38 A5 69 6E */	addi r5, r5, 0x696E /* 0x006C696E@l */
/* 801B1A84  38 E0 00 00 */	li r7, 0
/* 801B1A88  39 00 00 00 */	li r8, 0
/* 801B1A8C  48 0A 1E F9 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801B1A90  7C 60 1B 78 */	mr r0, r3
lbl_801B1A94:
/* 801B1A94  90 1F 00 A8 */	stw r0, 0xa8(r31)
/* 801B1A98  80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 801B1A9C  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 801B1AA0  C0 42 A5 30 */	lfs f2, lit_5173(r2)
/* 801B1AA4  C0 03 00 34 */	lfs f0, 0x34(r3)
/* 801B1AA8  EC 02 00 32 */	fmuls f0, f2, f0
/* 801B1AAC  EC 01 00 2A */	fadds f0, f1, f0
/* 801B1AB0  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 801B1AB4  80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 801B1AB8  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 801B1ABC  C0 03 00 38 */	lfs f0, 0x38(r3)
/* 801B1AC0  EC 02 00 32 */	fmuls f0, f2, f0
/* 801B1AC4  EC 01 00 2A */	fadds f0, f1, f0
/* 801B1AC8  D0 1F 00 80 */	stfs f0, 0x80(r31)
/* 801B1ACC  C0 02 A5 34 */	lfs f0, lit_5174(r2)
/* 801B1AD0  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 801B1AD4  38 60 00 6C */	li r3, 0x6c
/* 801B1AD8  48 11 D1 75 */	bl __nw__FUl
/* 801B1ADC  7C 60 1B 79 */	or. r0, r3, r3
/* 801B1AE0  41 82 00 28 */	beq lbl_801B1B08
/* 801B1AE4  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801B1AE8  3C A0 65 6E */	lis r5, 0x656E /* 0x656E5F6E@ha */
/* 801B1AEC  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x656E5F6E@l */
/* 801B1AF0  3C A0 00 6B */	lis r5, 0x006B /* 0x006B616D@ha */
/* 801B1AF4  38 A5 61 6D */	addi r5, r5, 0x616D /* 0x006B616D@l */
/* 801B1AF8  38 E0 00 00 */	li r7, 0
/* 801B1AFC  39 00 00 00 */	li r8, 0
/* 801B1B00  48 0A 1E 85 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801B1B04  7C 60 1B 78 */	mr r0, r3
lbl_801B1B08:
/* 801B1B08  90 1F 00 AC */	stw r0, 0xac(r31)
/* 801B1B0C  38 60 00 6C */	li r3, 0x6c
/* 801B1B10  48 11 D1 3D */	bl __nw__FUl
/* 801B1B14  7C 60 1B 79 */	or. r0, r3, r3
/* 801B1B18  41 82 00 28 */	beq lbl_801B1B40
/* 801B1B1C  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801B1B20  3C A0 6C 62 */	lis r5, 0x6C62 /* 0x6C62676E@ha */
/* 801B1B24  38 C5 67 6E */	addi r6, r5, 0x676E /* 0x6C62676E@l */
/* 801B1B28  3C A0 6D 6F */	lis r5, 0x6D6F /* 0x6D6F6465@ha */
/* 801B1B2C  38 A5 64 65 */	addi r5, r5, 0x6465 /* 0x6D6F6465@l */
/* 801B1B30  38 E0 00 02 */	li r7, 2
/* 801B1B34  39 00 00 00 */	li r8, 0
/* 801B1B38  48 0A 1E 4D */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801B1B3C  7C 60 1B 78 */	mr r0, r3
lbl_801B1B40:
/* 801B1B40  90 1F 01 60 */	stw r0, 0x160(r31)
/* 801B1B44  38 60 00 6C */	li r3, 0x6c
/* 801B1B48  48 11 D1 05 */	bl __nw__FUl
/* 801B1B4C  7C 60 1B 79 */	or. r0, r3, r3
/* 801B1B50  41 82 00 28 */	beq lbl_801B1B78
/* 801B1B54  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801B1B58  3C A0 72 74 */	lis r5, 0x7274 /* 0x72745F6E@ha */
/* 801B1B5C  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x72745F6E@l */
/* 801B1B60  3C A0 00 68 */	lis r5, 0x0068 /* 0x00686561@ha */
/* 801B1B64  38 A5 65 61 */	addi r5, r5, 0x6561 /* 0x00686561@l */
/* 801B1B68  38 E0 00 00 */	li r7, 0
/* 801B1B6C  39 00 00 00 */	li r8, 0
/* 801B1B70  48 0A 1E 15 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801B1B74  7C 60 1B 78 */	mr r0, r3
lbl_801B1B78:
/* 801B1B78  90 1F 01 64 */	stw r0, 0x164(r31)
/* 801B1B7C  38 60 00 6C */	li r3, 0x6c
/* 801B1B80  48 11 D0 CD */	bl __nw__FUl
/* 801B1B84  7C 60 1B 79 */	or. r0, r3, r3
/* 801B1B88  41 82 00 28 */	beq lbl_801B1BB0
/* 801B1B8C  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 801B1B90  3C A0 74 5F */	lis r5, 0x745F /* 0x745F6B6E@ha */
/* 801B1B94  38 C5 6B 6E */	addi r6, r5, 0x6B6E /* 0x745F6B6E@l */
/* 801B1B98  3C A0 68 65 */	lis r5, 0x6865 /* 0x68656172@ha */
/* 801B1B9C  38 A5 61 72 */	addi r5, r5, 0x6172 /* 0x68656172@l */
/* 801B1BA0  38 E0 00 00 */	li r7, 0
/* 801B1BA4  39 00 00 00 */	li r8, 0
/* 801B1BA8  48 0A 1D DD */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 801B1BAC  7C 60 1B 78 */	mr r0, r3
lbl_801B1BB0:
/* 801B1BB0  90 1F 01 68 */	stw r0, 0x168(r31)
/* 801B1BB4  7F E3 FB 78 */	mr r3, r31
/* 801B1BB8  A0 9F 01 7C */	lhz r4, 0x17c(r31)
/* 801B1BBC  48 00 43 F9 */	bl setAButtonString__17dMenu_Collect2D_cFUs
/* 801B1BC0  7F E3 FB 78 */	mr r3, r31
/* 801B1BC4  A0 9F 01 7E */	lhz r4, 0x17e(r31)
/* 801B1BC8  48 00 44 F1 */	bl setBButtonString__17dMenu_Collect2D_cFUs
/* 801B1BCC  7F E3 FB 78 */	mr r3, r31
/* 801B1BD0  88 9F 02 57 */	lbz r4, 0x257(r31)
/* 801B1BD4  88 BF 02 58 */	lbz r5, 0x258(r31)
/* 801B1BD8  48 00 45 E5 */	bl setItemNameString__17dMenu_Collect2D_cFUcUc
/* 801B1BDC  7F E3 FB 78 */	mr r3, r31
/* 801B1BE0  48 00 0C 0D */	bl cursorPosSet__17dMenu_Collect2D_cFv
/* 801B1BE4  88 9E 00 F8 */	lbz r4, 0xf8(r30)
/* 801B1BE8  7F E3 FB 78 */	mr r3, r31
/* 801B1BEC  48 00 14 DD */	bl setArrowMaxNum__17dMenu_Collect2D_cFUc
/* 801B1BF0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801B1BF4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801B1BF8  4B E8 0E B1 */	bl getRupeeMax__21dSv_player_status_a_cCFv
/* 801B1BFC  7C 64 1B 78 */	mr r4, r3
/* 801B1C00  7F E3 FB 78 */	mr r3, r31
/* 801B1C04  48 00 17 3D */	bl setWalletMaxNum__17dMenu_Collect2D_cFUs
/* 801B1C08  7F E3 FB 78 */	mr r3, r31
/* 801B1C0C  48 00 19 19 */	bl setSmellType__17dMenu_Collect2D_cFv
/* 801B1C10  7F E3 FB 78 */	mr r3, r31
/* 801B1C14  48 00 1A 2D */	bl setHeartPiece__17dMenu_Collect2D_cFv
/* 801B1C18  88 94 01 0C */	lbz r4, 0x10c(r20)
/* 801B1C1C  7F E3 FB 78 */	mr r3, r31
/* 801B1C20  48 00 1A ED */	bl setPohMaxNum__17dMenu_Collect2D_cFUc
/* 801B1C24  39 61 00 50 */	addi r11, r1, 0x50
/* 801B1C28  48 1B 05 D1 */	bl _restgpr_17
/* 801B1C2C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801B1C30  7C 08 03 A6 */	mtlr r0
/* 801B1C34  38 21 00 50 */	addi r1, r1, 0x50
/* 801B1C38  4E 80 00 20 */	blr 
