from django.shortcuts import render
from .models import Post


def post_list(request):
    qs = Post.objects.all().order_by('-id')
    # blog/templates/blog/post_list.html 생성
    return render(request, 'blog/post_list.html', {
        'post_list': qs,
    })
