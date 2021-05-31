from django.shortcuts import render

from rest_framework.decorators import APIView
from rest_framework.response import Response


class TestView(APIView):
    def get(self, request):
        return Response(data={'my_response': 'Hello from GCP!'})
