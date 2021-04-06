lbl_801DCF34:
/* 801DCF34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801DCF38  7C 08 02 A6 */	mflr r0
/* 801DCF3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 801DCF40  39 61 00 20 */	addi r11, r1, 0x20
/* 801DCF44  48 18 52 8D */	bl _savegpr_26
/* 801DCF48  7C 7F 1B 79 */	or. r31, r3, r3
/* 801DCF4C  7C 9E 23 78 */	mr r30, r4
/* 801DCF50  41 82 04 00 */	beq lbl_801DD350
/* 801DCF54  3C 60 80 3C */	lis r3, __vt__14dMenu_Letter_c@ha /* 0x803BDB8C@ha */
/* 801DCF58  38 03 DB 8C */	addi r0, r3, __vt__14dMenu_Letter_c@l /* 0x803BDB8C@l */
/* 801DCF5C  90 1F 00 00 */	stw r0, 0(r31)
/* 801DCF60  80 7F 03 0C */	lwz r3, 0x30c(r31)
/* 801DCF64  28 03 00 00 */	cmplwi r3, 0
/* 801DCF68  41 82 00 18 */	beq lbl_801DCF80
/* 801DCF6C  38 80 00 01 */	li r4, 1
/* 801DCF70  81 83 00 00 */	lwz r12, 0(r3)
/* 801DCF74  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801DCF78  7D 89 03 A6 */	mtctr r12
/* 801DCF7C  4E 80 04 21 */	bctrl 
lbl_801DCF80:
/* 801DCF80  38 00 00 00 */	li r0, 0
/* 801DCF84  90 1F 03 0C */	stw r0, 0x30c(r31)
/* 801DCF88  80 7F 03 14 */	lwz r3, 0x314(r31)
/* 801DCF8C  28 03 00 00 */	cmplwi r3, 0
/* 801DCF90  41 82 00 18 */	beq lbl_801DCFA8
/* 801DCF94  38 80 00 01 */	li r4, 1
/* 801DCF98  81 83 00 00 */	lwz r12, 0(r3)
/* 801DCF9C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DCFA0  7D 89 03 A6 */	mtctr r12
/* 801DCFA4  4E 80 04 21 */	bctrl 
lbl_801DCFA8:
/* 801DCFA8  38 00 00 00 */	li r0, 0
/* 801DCFAC  90 1F 03 14 */	stw r0, 0x314(r31)
/* 801DCFB0  80 7F 03 10 */	lwz r3, 0x310(r31)
/* 801DCFB4  38 80 00 01 */	li r4, 1
/* 801DCFB8  48 06 CD 71 */	bl __dt__12dMsgString_cFv
/* 801DCFBC  38 00 00 00 */	li r0, 0
/* 801DCFC0  90 1F 03 10 */	stw r0, 0x310(r31)
/* 801DCFC4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 801DCFC8  28 03 00 00 */	cmplwi r3, 0
/* 801DCFCC  41 82 00 18 */	beq lbl_801DCFE4
/* 801DCFD0  38 80 00 01 */	li r4, 1
/* 801DCFD4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DCFD8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DCFDC  7D 89 03 A6 */	mtctr r12
/* 801DCFE0  4E 80 04 21 */	bctrl 
lbl_801DCFE4:
/* 801DCFE4  38 00 00 00 */	li r0, 0
/* 801DCFE8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 801DCFEC  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 801DCFF0  28 03 00 00 */	cmplwi r3, 0
/* 801DCFF4  41 82 00 18 */	beq lbl_801DD00C
/* 801DCFF8  38 80 00 01 */	li r4, 1
/* 801DCFFC  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD000  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DD004  7D 89 03 A6 */	mtctr r12
/* 801DD008  4E 80 04 21 */	bctrl 
lbl_801DD00C:
/* 801DD00C  38 00 00 00 */	li r0, 0
/* 801DD010  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 801DD014  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 801DD018  28 03 00 00 */	cmplwi r3, 0
/* 801DD01C  41 82 00 18 */	beq lbl_801DD034
/* 801DD020  38 80 00 01 */	li r4, 1
/* 801DD024  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD028  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DD02C  7D 89 03 A6 */	mtctr r12
/* 801DD030  4E 80 04 21 */	bctrl 
lbl_801DD034:
/* 801DD034  38 00 00 00 */	li r0, 0
/* 801DD038  90 1F 00 20 */	stw r0, 0x20(r31)
/* 801DD03C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 801DD040  28 03 00 00 */	cmplwi r3, 0
/* 801DD044  41 82 00 18 */	beq lbl_801DD05C
/* 801DD048  38 80 00 01 */	li r4, 1
/* 801DD04C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD050  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DD054  7D 89 03 A6 */	mtctr r12
/* 801DD058  4E 80 04 21 */	bctrl 
lbl_801DD05C:
/* 801DD05C  3B 80 00 00 */	li r28, 0
/* 801DD060  93 9F 00 24 */	stw r28, 0x24(r31)
/* 801DD064  3B 60 00 00 */	li r27, 0
lbl_801DD068:
/* 801DD068  7F BF E2 14 */	add r29, r31, r28
/* 801DD06C  80 7D 00 28 */	lwz r3, 0x28(r29)
/* 801DD070  28 03 00 00 */	cmplwi r3, 0
/* 801DD074  41 82 00 18 */	beq lbl_801DD08C
/* 801DD078  38 80 00 01 */	li r4, 1
/* 801DD07C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD080  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DD084  7D 89 03 A6 */	mtctr r12
/* 801DD088  4E 80 04 21 */	bctrl 
lbl_801DD08C:
/* 801DD08C  38 00 00 00 */	li r0, 0
/* 801DD090  90 1D 00 28 */	stw r0, 0x28(r29)
/* 801DD094  80 7D 02 EC */	lwz r3, 0x2ec(r29)
/* 801DD098  28 03 00 00 */	cmplwi r3, 0
/* 801DD09C  41 82 00 18 */	beq lbl_801DD0B4
/* 801DD0A0  38 80 00 01 */	li r4, 1
/* 801DD0A4  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD0A8  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DD0AC  7D 89 03 A6 */	mtctr r12
/* 801DD0B0  4E 80 04 21 */	bctrl 
lbl_801DD0B4:
/* 801DD0B4  38 00 00 00 */	li r0, 0
/* 801DD0B8  90 1D 02 EC */	stw r0, 0x2ec(r29)
/* 801DD0BC  80 7D 02 F4 */	lwz r3, 0x2f4(r29)
/* 801DD0C0  28 03 00 00 */	cmplwi r3, 0
/* 801DD0C4  41 82 00 24 */	beq lbl_801DD0E8
/* 801DD0C8  41 82 00 18 */	beq lbl_801DD0E0
/* 801DD0CC  38 80 00 01 */	li r4, 1
/* 801DD0D0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD0D4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DD0D8  7D 89 03 A6 */	mtctr r12
/* 801DD0DC  4E 80 04 21 */	bctrl 
lbl_801DD0E0:
/* 801DD0E0  38 00 00 00 */	li r0, 0
/* 801DD0E4  90 1D 02 F4 */	stw r0, 0x2f4(r29)
lbl_801DD0E8:
/* 801DD0E8  80 7D 02 E0 */	lwz r3, 0x2e0(r29)
/* 801DD0EC  28 03 00 00 */	cmplwi r3, 0
/* 801DD0F0  41 82 00 18 */	beq lbl_801DD108
/* 801DD0F4  38 80 00 01 */	li r4, 1
/* 801DD0F8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD0FC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DD100  7D 89 03 A6 */	mtctr r12
/* 801DD104  4E 80 04 21 */	bctrl 
lbl_801DD108:
/* 801DD108  38 00 00 00 */	li r0, 0
/* 801DD10C  90 1D 02 E0 */	stw r0, 0x2e0(r29)
/* 801DD110  3B 7B 00 01 */	addi r27, r27, 1
/* 801DD114  2C 1B 00 02 */	cmpwi r27, 2
/* 801DD118  3B 9C 00 04 */	addi r28, r28, 4
/* 801DD11C  41 80 FF 4C */	blt lbl_801DD068
/* 801DD120  80 7F 02 E8 */	lwz r3, 0x2e8(r31)
/* 801DD124  28 03 00 00 */	cmplwi r3, 0
/* 801DD128  41 82 00 18 */	beq lbl_801DD140
/* 801DD12C  38 80 00 01 */	li r4, 1
/* 801DD130  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD134  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DD138  7D 89 03 A6 */	mtctr r12
/* 801DD13C  4E 80 04 21 */	bctrl 
lbl_801DD140:
/* 801DD140  38 00 00 00 */	li r0, 0
/* 801DD144  90 1F 02 E8 */	stw r0, 0x2e8(r31)
/* 801DD148  80 7F 02 B4 */	lwz r3, 0x2b4(r31)
/* 801DD14C  28 03 00 00 */	cmplwi r3, 0
/* 801DD150  41 82 00 18 */	beq lbl_801DD168
/* 801DD154  38 80 00 01 */	li r4, 1
/* 801DD158  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD15C  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DD160  7D 89 03 A6 */	mtctr r12
/* 801DD164  4E 80 04 21 */	bctrl 
lbl_801DD168:
/* 801DD168  3B 80 00 00 */	li r28, 0
/* 801DD16C  93 9F 02 B4 */	stw r28, 0x2b4(r31)
/* 801DD170  3B 40 00 00 */	li r26, 0
/* 801DD174  3B A0 00 00 */	li r29, 0
lbl_801DD178:
/* 801DD178  3B 7D 02 B8 */	addi r27, r29, 0x2b8
/* 801DD17C  7C 7F D8 2E */	lwzx r3, r31, r27
/* 801DD180  28 03 00 00 */	cmplwi r3, 0
/* 801DD184  41 82 00 18 */	beq lbl_801DD19C
/* 801DD188  38 80 00 01 */	li r4, 1
/* 801DD18C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD190  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DD194  7D 89 03 A6 */	mtctr r12
/* 801DD198  4E 80 04 21 */	bctrl 
lbl_801DD19C:
/* 801DD19C  7F 9F D9 2E */	stwx r28, r31, r27
/* 801DD1A0  3B 5A 00 01 */	addi r26, r26, 1
/* 801DD1A4  2C 1A 00 03 */	cmpwi r26, 3
/* 801DD1A8  3B BD 00 04 */	addi r29, r29, 4
/* 801DD1AC  41 80 FF CC */	blt lbl_801DD178
/* 801DD1B0  3B 40 00 00 */	li r26, 0
/* 801DD1B4  3B A0 00 00 */	li r29, 0
/* 801DD1B8  3B 80 00 00 */	li r28, 0
lbl_801DD1BC:
/* 801DD1BC  3B 7D 02 C8 */	addi r27, r29, 0x2c8
/* 801DD1C0  7C 7F D8 2E */	lwzx r3, r31, r27
/* 801DD1C4  28 03 00 00 */	cmplwi r3, 0
/* 801DD1C8  41 82 00 18 */	beq lbl_801DD1E0
/* 801DD1CC  38 80 00 01 */	li r4, 1
/* 801DD1D0  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD1D4  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DD1D8  7D 89 03 A6 */	mtctr r12
/* 801DD1DC  4E 80 04 21 */	bctrl 
lbl_801DD1E0:
/* 801DD1E0  7F 9F D9 2E */	stwx r28, r31, r27
/* 801DD1E4  3B 5A 00 01 */	addi r26, r26, 1
/* 801DD1E8  2C 1A 00 06 */	cmpwi r26, 6
/* 801DD1EC  3B BD 00 04 */	addi r29, r29, 4
/* 801DD1F0  41 80 FF CC */	blt lbl_801DD1BC
/* 801DD1F4  80 7F 02 C4 */	lwz r3, 0x2c4(r31)
/* 801DD1F8  28 03 00 00 */	cmplwi r3, 0
/* 801DD1FC  41 82 00 18 */	beq lbl_801DD214
/* 801DD200  38 80 00 01 */	li r4, 1
/* 801DD204  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD208  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DD20C  7D 89 03 A6 */	mtctr r12
/* 801DD210  4E 80 04 21 */	bctrl 
lbl_801DD214:
/* 801DD214  38 00 00 00 */	li r0, 0
/* 801DD218  90 1F 02 C4 */	stw r0, 0x2c4(r31)
/* 801DD21C  80 7F 00 30 */	lwz r3, 0x30(r31)
/* 801DD220  28 03 00 00 */	cmplwi r3, 0
/* 801DD224  41 82 00 18 */	beq lbl_801DD23C
/* 801DD228  38 80 00 01 */	li r4, 1
/* 801DD22C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD230  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DD234  7D 89 03 A6 */	mtctr r12
/* 801DD238  4E 80 04 21 */	bctrl 
lbl_801DD23C:
/* 801DD23C  38 00 00 00 */	li r0, 0
/* 801DD240  90 1F 00 30 */	stw r0, 0x30(r31)
/* 801DD244  3B 40 00 00 */	li r26, 0
/* 801DD248  3B A0 00 00 */	li r29, 0
lbl_801DD24C:
/* 801DD24C  7F 7F EA 14 */	add r27, r31, r29
/* 801DD250  80 7B 02 FC */	lwz r3, 0x2fc(r27)
/* 801DD254  28 03 00 00 */	cmplwi r3, 0
/* 801DD258  41 82 00 24 */	beq lbl_801DD27C
/* 801DD25C  41 82 00 18 */	beq lbl_801DD274
/* 801DD260  38 80 00 01 */	li r4, 1
/* 801DD264  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD268  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DD26C  7D 89 03 A6 */	mtctr r12
/* 801DD270  4E 80 04 21 */	bctrl 
lbl_801DD274:
/* 801DD274  38 00 00 00 */	li r0, 0
/* 801DD278  90 1B 02 FC */	stw r0, 0x2fc(r27)
lbl_801DD27C:
/* 801DD27C  80 7B 03 04 */	lwz r3, 0x304(r27)
/* 801DD280  28 03 00 00 */	cmplwi r3, 0
/* 801DD284  41 82 00 24 */	beq lbl_801DD2A8
/* 801DD288  41 82 00 18 */	beq lbl_801DD2A0
/* 801DD28C  38 80 00 01 */	li r4, 1
/* 801DD290  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD294  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DD298  7D 89 03 A6 */	mtctr r12
/* 801DD29C  4E 80 04 21 */	bctrl 
lbl_801DD2A0:
/* 801DD2A0  38 00 00 00 */	li r0, 0
/* 801DD2A4  90 1B 03 04 */	stw r0, 0x304(r27)
lbl_801DD2A8:
/* 801DD2A8  3B 5A 00 01 */	addi r26, r26, 1
/* 801DD2AC  2C 1A 00 02 */	cmpwi r26, 2
/* 801DD2B0  3B BD 00 04 */	addi r29, r29, 4
/* 801DD2B4  41 80 FF 98 */	blt lbl_801DD24C
/* 801DD2B8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801DD2BC  28 03 00 00 */	cmplwi r3, 0
/* 801DD2C0  41 82 00 40 */	beq lbl_801DD300
/* 801DD2C4  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 801DD2C8  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD2CC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801DD2D0  7D 89 03 A6 */	mtctr r12
/* 801DD2D4  4E 80 04 21 */	bctrl 
/* 801DD2D8  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 801DD2DC  28 03 00 00 */	cmplwi r3, 0
/* 801DD2E0  41 82 00 18 */	beq lbl_801DD2F8
/* 801DD2E4  38 80 00 01 */	li r4, 1
/* 801DD2E8  81 83 00 10 */	lwz r12, 0x10(r3)
/* 801DD2EC  81 8C 00 08 */	lwz r12, 8(r12)
/* 801DD2F0  7D 89 03 A6 */	mtctr r12
/* 801DD2F4  4E 80 04 21 */	bctrl 
lbl_801DD2F8:
/* 801DD2F8  38 00 00 00 */	li r0, 0
/* 801DD2FC  90 1F 00 14 */	stw r0, 0x14(r31)
lbl_801DD300:
/* 801DD300  80 7F 00 08 */	lwz r3, 8(r31)
/* 801DD304  28 03 00 00 */	cmplwi r3, 0
/* 801DD308  41 82 00 1C */	beq lbl_801DD324
/* 801DD30C  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD310  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 801DD314  7D 89 03 A6 */	mtctr r12
/* 801DD318  4E 80 04 21 */	bctrl 
/* 801DD31C  38 00 00 00 */	li r0, 0
/* 801DD320  90 1F 00 08 */	stw r0, 8(r31)
lbl_801DD324:
/* 801DD324  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 801DD328  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 801DD32C  80 63 5C 6C */	lwz r3, 0x5c6c(r3)
/* 801DD330  81 83 00 00 */	lwz r12, 0(r3)
/* 801DD334  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 801DD338  7D 89 03 A6 */	mtctr r12
/* 801DD33C  4E 80 04 21 */	bctrl 
/* 801DD340  7F C0 07 35 */	extsh. r0, r30
/* 801DD344  40 81 00 0C */	ble lbl_801DD350
/* 801DD348  7F E3 FB 78 */	mr r3, r31
/* 801DD34C  48 0F 19 F1 */	bl __dl__FPv
lbl_801DD350:
/* 801DD350  7F E3 FB 78 */	mr r3, r31
/* 801DD354  39 61 00 20 */	addi r11, r1, 0x20
/* 801DD358  48 18 4E C5 */	bl _restgpr_26
/* 801DD35C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801DD360  7C 08 03 A6 */	mtlr r0
/* 801DD364  38 21 00 20 */	addi r1, r1, 0x20
/* 801DD368  4E 80 00 20 */	blr 
