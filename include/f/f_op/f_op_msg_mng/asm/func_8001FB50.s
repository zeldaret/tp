/* 8001FB50 0001CA90  94 21 FF 90 */ stwu r1, -0x70(r1)
/* 8001FB54 0001CA94  7C 08 02 A6 */ mflr r0
/* 8001FB58 0001CA98  90 01 00 74 */ stw r0, 0x74(r1)
/* 8001FB5C 0001CA9C  DB E1 00 60 */ stfd f31, 0x60(r1)
/* 8001FB60 0001CAA0  F3 E1 00 68 */ psq_st f31, 104(r1), 0, 0
/* 8001FB64 0001CAA4  DB C1 00 50 */ stfd f30, 0x50(r1)
/* 8001FB68 0001CAA8  F3 C1 00 58 */ psq_st f30, 88(r1), 0, 0
/* 8001FB6C 0001CAAC  DB A1 00 40 */ stfd f29, 0x40(r1)
/* 8001FB70 0001CAB0  F3 A1 00 48 */ psq_st f29, 72(r1), 0, 0
/* 8001FB74 0001CAB4  DB 81 00 30 */ stfd f28, 0x30(r1)
/* 8001FB78 0001CAB8  F3 81 00 38 */ psq_st f28, 56(r1), 0, 0
/* 8001FB7C 0001CABC  39 61 00 30 */ addi r11, r1, 0x30
/* 8001FB80 0001CAC0  48 34 26 55 */ bl _savegpr_27
/* 8001FB84 0001CAC4  7C 7B 1B 78 */ mr r27, r3
/* 8001FB88 0001CAC8  7C 9C 23 78 */ mr r28, r4
/* 8001FB8C 0001CACC  7C BD 2B 78 */ mr r29, r5
/* 8001FB90 0001CAD0  7C DE 33 78 */ mr r30, r6
/* 8001FB94 0001CAD4  FF 80 08 90 */ fmr f28, f1
/* 8001FB98 0001CAD8  FF A0 10 90 */ fmr f29, f2
/* 8001FB9C 0001CADC  FF C0 18 90 */ fmr f30, f3
/* 8001FBA0 0001CAE0  FF E0 20 90 */ fmr f31, f4
/* 8001FBA4 0001CAE4  7C FF 3B 78 */ mr r31, r7
/* 8001FBA8 0001CAE8  38 60 FF FC */ li r3, -4
/* 8001FBAC 0001CAEC  38 80 00 38 */ li r4, 0x38
/* 8001FBB0 0001CAF0  48 24 36 79 */ bl memalignB__3cMlFiUl
/* 8001FBB4 0001CAF4  28 03 00 00 */ cmplwi r3, 0
/* 8001FBB8 0001CAF8  40 82 00 0C */ bne lbl_8001FBC4
/* 8001FBBC 0001CAFC  38 60 00 00 */ li r3, 0
/* 8001FBC0 0001CB00  48 00 00 54 */ b lbl_8001FC14
lbl_8001FBC4:
/* 8001FBC4 0001CB04  38 00 00 00 */ li r0, 0
/* 8001FBC8 0001CB08  90 03 00 00 */ stw r0, 0(r3)
/* 8001FBCC 0001CB0C  90 03 00 10 */ stw r0, 0x10(r3)
/* 8001FBD0 0001CB10  90 03 00 14 */ stw r0, 0x14(r3)
/* 8001FBD4 0001CB14  C0 02 82 70 */ lfs f0, lbl_80451C70-_SDA2_BASE_(r2)
/* 8001FBD8 0001CB18  D0 01 00 08 */ stfs f0, 8(r1)
/* 8001FBDC 0001CB1C  D0 01 00 0C */ stfs f0, 0xc(r1)
/* 8001FBE0 0001CB20  D0 01 00 10 */ stfs f0, 0x10(r1)
/* 8001FBE4 0001CB24  D0 03 00 04 */ stfs f0, 4(r3)
/* 8001FBE8 0001CB28  D0 03 00 08 */ stfs f0, 8(r3)
/* 8001FBEC 0001CB2C  D0 03 00 0C */ stfs f0, 0xc(r3)
/* 8001FBF0 0001CB30  93 E3 00 18 */ stw r31, 0x18(r3)
/* 8001FBF4 0001CB34  93 63 00 1C */ stw r27, 0x1c(r3)
/* 8001FBF8 0001CB38  93 83 00 20 */ stw r28, 0x20(r3)
/* 8001FBFC 0001CB3C  9B A3 00 24 */ stb r29, 0x24(r3)
/* 8001FC00 0001CB40  9B C3 00 25 */ stb r30, 0x25(r3)
/* 8001FC04 0001CB44  D3 83 00 28 */ stfs f28, 0x28(r3)
/* 8001FC08 0001CB48  D3 A3 00 2C */ stfs f29, 0x2c(r3)
/* 8001FC0C 0001CB4C  D3 C3 00 30 */ stfs f30, 0x30(r3)
/* 8001FC10 0001CB50  D3 E3 00 34 */ stfs f31, 0x34(r3)
lbl_8001FC14:
/* 8001FC14 0001CB54  E3 E1 00 68 */ psq_l f31, 104(r1), 0, 0
/* 8001FC18 0001CB58  CB E1 00 60 */ lfd f31, 0x60(r1)
/* 8001FC1C 0001CB5C  E3 C1 00 58 */ psq_l f30, 88(r1), 0, 0
/* 8001FC20 0001CB60  CB C1 00 50 */ lfd f30, 0x50(r1)
/* 8001FC24 0001CB64  E3 A1 00 48 */ psq_l f29, 72(r1), 0, 0
/* 8001FC28 0001CB68  CB A1 00 40 */ lfd f29, 0x40(r1)
/* 8001FC2C 0001CB6C  E3 81 00 38 */ psq_l f28, 56(r1), 0, 0
/* 8001FC30 0001CB70  CB 81 00 30 */ lfd f28, 0x30(r1)
/* 8001FC34 0001CB74  39 61 00 30 */ addi r11, r1, 0x30
/* 8001FC38 0001CB78  48 34 25 E9 */ bl _restgpr_27
/* 8001FC3C 0001CB7C  80 01 00 74 */ lwz r0, 0x74(r1)
/* 8001FC40 0001CB80  7C 08 03 A6 */ mtlr r0
/* 8001FC44 0001CB84  38 21 00 70 */ addi r1, r1, 0x70
/* 8001FC48 0001CB88  4E 80 00 20 */ blr
